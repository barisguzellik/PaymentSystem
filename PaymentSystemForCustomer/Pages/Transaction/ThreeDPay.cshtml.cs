using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using Iyzipay;
using Iyzipay.Model;
using Iyzipay.Request;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using PaymentChannel = PaymentSystem.Model.PaymentChannel;

namespace PaymentSystemForCustomer
{
    [IgnoreAntiforgeryToken]
    public class ThreeDPayModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();

        public string Result { get; set; }
        public PaymentChannel PaymentChannel { get; set; }
        public Transaction Transaction { get; set; }

        public IActionResult OnPost(IFormCollection data)
        {
            if (data["token"].ToString() != null)
            {
                var con = DbEvents.getConnection();
                var token = new
                {
                    Token = data["token"]
                };
                Transaction = con.QueryAsync<Transaction>("SELECT*FROM Transactions WHERE Token=@Token", token).Result.Single();

                PaymentChannel = con.QueryAsync<PaymentChannel>("SELECT*FROM PaymentChannel WHERE PaymentChannelId=" + Transaction.PaymentChannelId + "").Result.Single();

                Options options = new Options()
                {
                    ApiKey = PaymentChannel.ApiKey,
                    SecretKey = PaymentChannel.SecretKey,
                    BaseUrl = PaymentChannel.BaseUrl
                };

                RetrieveCheckoutFormRequest request = new RetrieveCheckoutFormRequest();
                request.Token = data["token"];

                CheckoutForm checkoutForm = CheckoutForm.Retrieve(request, options);
                if (checkoutForm.PaymentStatus == "SUCCESS")
                {

                    var sql = "UPDATE Transactions SET Status=1 WHERE Token=@Token";
                    var param = new
                    {
                        Token = checkoutForm.Token
                    };
                    con.Execute(sql, param);
                    DbEvents.addLog(checkoutForm.PaymentId + " numaralı ve " + decimal.Parse(checkoutForm.Price) + " tutarında ödeme onaylandı.", Request.Cookies["token"].ToString());
                    Result = "Swal.fire('Ödeme','" + checkoutForm.PaymentId + " numaralı ödeme gerçekleşti...','success').then((res)=>{window.location.href='/Transaction/List'});";
                }
                else
                {
                    DbEvents.addLog(checkoutForm.PaymentId + " numaralı ve " + decimal.Parse(checkoutForm.Price) + " tutarında ödeme başarısız oldu.(" + checkoutForm.ErrorMessage + ")", Request.Cookies["token"].ToString());
                    Result = "Swal.fire('Tahsilat','" + checkoutForm.PaymentStatus + "-" + checkoutForm.ErrorMessage + "','error').then((res)=>{window.location.href='/Transaction/List'});";
                }
            }

            return Page();

        }

    }
}