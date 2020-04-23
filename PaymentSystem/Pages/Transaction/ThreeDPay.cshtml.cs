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

namespace PaymentSystem
{
    [IgnoreAntiforgeryToken]
    public class ThreeDPayModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();

        public string Result { get; set; }

        public IActionResult OnPost(IFormCollection data)
        {
            if (data["token"].ToString() != null)
            {
                Options options = new Options()
                {
                    ApiKey = "sandbox-6C4FDBCcelqhyHqxttnZzkaCbU97pWkU",
                    SecretKey = "sandbox-sZ5kCxHDR5nWcttdQC04PNmGhVj3VZoV",
                    BaseUrl = "https://sandbox-api.iyzipay.com"
                };

                RetrieveCheckoutFormRequest request = new RetrieveCheckoutFormRequest();
                request.Token = data["token"];

                CheckoutForm checkoutForm = CheckoutForm.Retrieve(request, options);
                if (checkoutForm.PaymentStatus == "SUCCESS")
                {
                    var con = DbEvents.getConnection();
                    var sql = "UPDATE Transactions SET Status=1 WHERE Token=@Token";
                    var param = new
                    {
                        Token = checkoutForm.Token
                    };
                    con.Execute(sql, param);
                    DbEvents.addLog(checkoutForm.PaymentId + " numaralı ve " + decimal.Parse(checkoutForm.Price) + " tutarında tahsilat onaylandı.", Request.Cookies["token"].ToString());
                    Result = "Swal.fire('Tahsilat','" + checkoutForm.PaymentId + " numaralı tahsilat gerçekleşti...','success');";
                }
                else
                {
                    DbEvents.addLog(checkoutForm.PaymentId + " numaralı ve " + decimal.Parse(checkoutForm.Price) + " tutarında tahsilat başarısız oldu.(" + checkoutForm.ErrorMessage + ")", Request.Cookies["token"].ToString());
                    Result = "Swal.fire('Tahsilat','" + checkoutForm.PaymentStatus + "-" + checkoutForm.ErrorMessage + "','error');";
                }
            }

            return Page();

        }

    }
}