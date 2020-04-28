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

namespace PaymentSystem
{
    public class TransactionAddModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public Transaction Transaction { get; set; }
        [BindProperty]
        public IList<User> Users { get; set; }
        public string Message { get; set; }
        public string Result { get; set; }
        public string Iyzico { get; set; }

        public IActionResult OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT*FROM Users INNER JOIN Organizations on Users.OrganizationId=Organizations.OrganizationId";
            sql += " WHERE Users.UserType=2 ORDER BY Users.FirstName";
            Users = con.QueryAsync<User, Organization, User>
                (sql, (u, o) => { u.Organization = o; return u; }, splitOn: "OrganizationId").Result.ToList();
            return Page();
        }
        public IActionResult OnPost()
        {
            User getUser = DbEvents.getUser(Transaction.UserId);

            var checkoutFormToken = "";
            int paymentStatus = 0;

            if (Transaction.TransactionType == (int)Enums.TransactionType.Kredi_Kartı)
            {
                Options options = new Options()
                {
                    ApiKey = "sandbox-6C4FDBCcelqhyHqxttnZzkaCbU97pWkU",
                    SecretKey = "sandbox-sZ5kCxHDR5nWcttdQC04PNmGhVj3VZoV",
                    BaseUrl = "https://sandbox-api.iyzipay.com"
                };

                CreateCheckoutFormInitializeRequest request = new CreateCheckoutFormInitializeRequest();
                request.Price = DbEvents.convertToLocalPrice(Transaction.Price);
                request.PaidPrice = DbEvents.convertToLocalPrice(Transaction.Price);
                request.Currency = Currency.TRY.ToString();
                request.CallbackUrl = "http://localhost:5000/Transaction/ThreeDPay";

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
            }
            else
            {
                paymentStatus = 1;
                Message = "showMessage()";
            }


            var con = DbEvents.getConnection();
            var sql = "INSERT INTO Transactions(UserId,Price,Date,Status,Token,TransactionType) Values(@UserId,@Price,@Date,@Status,@Token,@TransactionType)";
            var param = new
            {
                UserId = Transaction.UserId,
                Price = DbEvents.convertToLocalPrice(Transaction.Price),
                Date = DateTime.Now,
                Status = paymentStatus,
                Token = checkoutFormToken,
                TransactionType = Transaction.TransactionType
            };

            con.Execute(sql, param);

            DbEvents.addLog(getUser.FirstName + " " + getUser.LastName + " isimli kullanıcı için " + Transaction.Price + " tutarında tahsilat emri başlatıldı.", Request.Cookies["token"].ToString());

            return OnGet();
        }
    }
}