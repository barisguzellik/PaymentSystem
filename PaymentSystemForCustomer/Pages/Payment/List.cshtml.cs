using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using Dapper;
using System.Globalization;

namespace PaymentSystemForCustomer
{
    public class PaymentListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<Payment> Payment { get; set; }
        public string totalPayment { get; set; }
        decimal totalPay = 0;

        public void OnGet()
        {
            User User = DbEvents.getUserByToken(Request.Cookies["token"].ToString());

            var con = DbEvents.getConnection();
            var sql = "SELECT Payments.CreatedDate,Payments.Price,Payments.ExpiryDate,Payments.Description,Payments.Status FROM Payments WHERE UserId=" + User.UserId + "";

            Payment = con.QueryAsync<Payment>(sql).Result.ToList();

            foreach (var item in Payment)
            {
                totalPay += decimal.Parse(item.Price);
            }

            totalPayment = totalPay.ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            DbEvents.addLog("Borç listesi görüntülendi.", Request.Cookies["token"].ToString());
        }
    }
}