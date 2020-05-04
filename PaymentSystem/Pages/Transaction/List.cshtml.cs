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
        public List<dynamic> Transaction { get; set; }
        public string totalTransaction { get; set; }
        decimal totalTra;

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT Organizations.Name,Users.FirstName,Users.LastName,Transactions.Price,Transactions.Date,Transactions.Status,Transactions.TransactionId FROM Transactions";
            sql += " INNER JOIN Users on Users.UserId=Transactions.UserId";
            sql += " INNER JOIN Organizations on Organizations.OrganizationId=Users.OrganizationId";
            if (!string.IsNullOrEmpty(Request.Query["userid"]))
            {
                int id = int.Parse(Request.Query["userid"].ToString());
                sql += " WHERE Transactions.UserId=" + id;
            }
            Transaction = con.QueryAsync<dynamic>(sql).Result.ToList();


            foreach (var item in Transaction)
            {
                totalTra += item.Price;
            }

            totalTransaction = totalTra.ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            DbEvents.addLog("Tahsilat listesi görüntülendi.", Request.Cookies["token"].ToString());
        }
    }
}