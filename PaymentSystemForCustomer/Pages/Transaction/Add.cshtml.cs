using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using Dapper;
using Microsoft.Data.SqlClient;
using System.Globalization;
using Iyzipay;
using Iyzipay.Request;
using Iyzipay.Model;
using Payment = Iyzipay.Model.Payment;
using Microsoft.AspNetCore.Http;
using PaymentChannel = PaymentSystem.Model.PaymentChannel;

namespace PaymentSystemForCustomer
{
    public class TransactionAddModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public Transaction Transaction { get; set; }
        [BindProperty]
        public IList<PaymentChannel> PaymentChannels { get; set; }
        [BindProperty]
        public int PaymentChannelId { get; set; }
        public PaymentChannel PaymentChannel { get; set; }
        public string Message { get; set; }
        public string Result { get; set; }
        public string Iyzico { get; set; }

        public IActionResult OnGet()
        {
            var con = DbEvents.getConnection();

            PaymentChannels = con.QueryAsync<PaymentChannel>("SELECT*FROM PaymentChannel").Result.ToList();
            return Page();
        }
        public IActionResult OnPost()
        {
            var con = DbEvents.getConnection();

            User getUser = DbEvents.getUserByToken(Request.Cookies["token"].ToString());

            var checkoutFormToken = "";
            int paymentStatus = 0;


            PaymentChannel = con.QueryAsync<PaymentChannel>("SELECT*FROM PaymentChannel WHERE PaymentChannelId=" + PaymentChannelId + "").Result.Single();
            Options options = new Options()
            {
                ApiKey = PaymentChannel.ApiKey,
                SecretKey = PaymentChannel.SecretKey,
                BaseUrl = PaymentChannel.BaseUrl
            };

            CreateCheckoutFormInitializeRequest request = new CreateCheckoutFormInitializeRequest();
            request.Price = DbEvents.convertToLocalPrice(Transaction.Price);
            request.PaidPrice = DbEvents.convertToLocalPrice(Transaction.Price);
            request.Currency = Currency.TRY.ToString();
            request.CallbackUrl = PaymentChannel.CallbackUrl;

            List<int> enabledInstallments = new List<int>();
            enabledInstallments.Add(2);
            enabledInstallments.Add(3);
            enabledInstallments.Add(6);
            enabledInstallments.Add(9);
            request.EnabledInstallments = enabledInstallments;

            Buyer buyer = new Buyer();
            buyer.Id = getUser.UserId.ToString();
            buyer.Name = getUser.FirstName;
            buyer.Surname = getUser.LastName;
            buyer.Email = "email@email.com";
            buyer.IdentityNumber = "11111111111";
            buyer.RegistrationAddress = "-";
            buyer.Ip = HttpContext.Connection.RemoteIpAddress.ToString();
            buyer.City = "-";
            buyer.Country = "Turkey";
            request.Buyer = buyer;

            Address shippingAddress = new Address();
            shippingAddress.ContactName = getUser.UserName;
            shippingAddress.City = "Istanbul";
            shippingAddress.Country = "Turkey";
            shippingAddress.Description = "-";
            request.ShippingAddress = shippingAddress;

            Address billingAddress = new Address();
            billingAddress.ContactName = getUser.UserName;
            billingAddress.City = "Istanbul";
            billingAddress.Country = "Turkey";
            billingAddress.Description = "-";
            request.BillingAddress = billingAddress;

            List<BasketItem> basketItems = new List<BasketItem>();
            BasketItem firstBasketItem = new BasketItem();
            firstBasketItem.Id = Guid.NewGuid().ToString();
            firstBasketItem.Name = "Tahsilat";
            firstBasketItem.Category1 = "Tahsilat";
            firstBasketItem.ItemType = BasketItemType.VIRTUAL.ToString();
            firstBasketItem.Price = DbEvents.convertToLocalPrice(Transaction.Price);
            basketItems.Add(firstBasketItem);

            request.BasketItems = basketItems;

            CheckoutFormInitialize checkoutFormInitialize = CheckoutFormInitialize.Create(request, options);
            Iyzico = checkoutFormInitialize.CheckoutFormContent;
            checkoutFormToken = checkoutFormInitialize.Token;




            var sql = "INSERT INTO Transactions(UserId,Price,Date,Status,Token,TransactionType,PaymentChannelId) Values(@UserId,@Price,@Date,@Status,@Token,@TransactionType,@PaymentChannelId)";
            var param = new
            {
                UserId = getUser.UserId,
                Price = DbEvents.convertToLocalPrice(Transaction.Price),
                Date = DateTime.Now,
                Status = paymentStatus,
                Token = checkoutFormToken,
                TransactionType = Enums.TransactionType.Kredi_Kartı,
                PaymentChannelId = PaymentChannel.PaymentChannelId
            };

            con.Execute(sql, param);

            DbEvents.addLog(getUser.FirstName + " " + getUser.LastName + " isimli kullanıcı " + Transaction.Price + " tutarında ödeme ekledi.", Request.Cookies["token"].ToString());

            return OnGet();
        }
    }
}