using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using Dapper;
using System.Globalization;

namespace PaymentSystem
{
    public class PaymentListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<dynamic> Payment { get; set; }
        public string totalPayment { get; set; }
        decimal totalPay = 0;

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT Organizations.Name,Users.FirstName,Users.LastName,Payments.Price,Payments.CreatedDate,Payments.ExpiryDate,Payments.Visible,Payments.Status,Payments.PaymentId FROM Payments";
            sql += " INNER JOIN Users on Users.UserId=Payments.UserId";
            sql += " INNER JOIN Organizations on Organizations.OrganizationId=Users.OrganizationId";
            if (!string.IsNullOrEmpty(Request.Query["userid"]))
            {
                int id = int.Parse(Request.Query["userid"].ToString());
                sql += " WHERE Users.UserId=" + id;
            }
            Payment = con.QueryAsync<dynamic>(sql).Result.ToList();


            foreach (dynamic item in Payment)
            {
                totalPay += item.Price;
            }

            totalPayment = totalPay.ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            DbEvents.addLog("Alacak listesi görüntülendi.", Request.Cookies["token"].ToString());
        }
    }
}