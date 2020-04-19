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
        public List<Payment> Payment { get; set; }
        public string totalPayment { get; set; }
        decimal totalPay;

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT*FROM Payments";
            sql += " INNER JOIN Users on Users.UserId=Payments.UserId";
            sql += " INNER JOIN Organizations on Organizations.OrganizationId=Users.OrganizationId";
            Payment = con.QueryAsync<Payment, User, Organization, Payment>
                (sql, (p, u, o) => { p.User = u; u.Organization = o; return p; }, splitOn: "UserId,OrganizationId").Result.ToList();


            foreach (var item in Payment)
            {
                totalPay += decimal.Parse(item.Price);
            }

            totalPayment = totalPay.ToString("C", CultureInfo.GetCultureInfo("tr-TR"));
        }
    }
}