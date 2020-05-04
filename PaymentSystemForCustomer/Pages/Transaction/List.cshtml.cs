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
    public class TransactionListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<Transaction> Transaction { get; set; }
        public string totalTransaction { get; set; }
        decimal totalTra;

        public void OnGet()
        {
            var con = DbEvents.getConnection();

            User getUser = DbEvents.getUserByToken(Request.Cookies["token"].ToString());

            var sql = "SELECT Transactions.Date,Transactions.Price,Transactions.TransactionType,Transactions.Status FROM Transactions WHERE UserId=" + getUser.UserId+"";
           
            Transaction = con.QueryAsync<Transaction>(sql).Result.ToList();


            foreach (var item in Transaction)
            {
                totalTra += decimal.Parse(item.Price);
            }

            totalTransaction = totalTra.ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            DbEvents.addLog("Ödeme listesi görüntülendi.", Request.Cookies["token"].ToString());
        }
    }
}