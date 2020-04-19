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
    public class TransactionListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<Transaction> Transaction { get; set; }
        public string totalTransaction { get; set; }
        decimal totalTra;

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT*FROM Transactions INNER JOIN Payments on Transactions.PaymentId=Payments.PaymentId";
            sql += " INNER JOIN Users on Users.UserId=Payments.UserId";
            sql += " INNER JOIN Organizations on Organizations.OrganizationId=Users.OrganizationId";
            Transaction = con.QueryAsync<Transaction, Payment, User, Organization, Transaction>
                (sql, (t, p, u, o) => { t.Payment = p; p.User = u; u.Organization = o; return t; }, splitOn: "PaymentId,UserId,OrganizationId").Result.ToList();


            foreach (var item in Transaction)
            {
                totalTra += decimal.Parse(item.Price);
            }

            totalTransaction = totalTra.ToString("C", CultureInfo.GetCultureInfo("tr-TR"));
        }
    }
}