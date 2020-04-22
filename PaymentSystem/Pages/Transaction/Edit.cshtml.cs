using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Data.SqlClient;
using PaymentSystem.Model;

namespace PaymentSystem
{
    public class TransactionEditModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public Transaction Transaction { get; set; }
        [BindProperty]
        public IList<User> Users { get; set; }
        public string Message { get; set; }

        public IActionResult OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT*FROM Users INNER JOIN Organizations on Users.OrganizationId=Organizations.OrganizationId";
            sql += " WHERE Users.UserType=2 ORDER BY Users.FirstName";
            Users = con.QueryAsync<User, Organization, User>
                (sql, (u, o) => { u.Organization = o; return u; }, splitOn: "OrganizationId").Result.ToList();

            if (!string.IsNullOrEmpty(Request.Query["id"]))
            {
                int id = int.Parse(Request.Query["id"].ToString());
                string sqlPay = "SELECT * FROM Transactions WHERE TransactionId=@Id";
                var param = new { Id = id };
                Transaction = con.QueryFirstOrDefaultAsync<Transaction>(sqlPay, param).Result;
            }

            return Page();
        }
        public IActionResult OnPostUpdate()
        {
            var con = DbEvents.getConnection();
            var sql = "UPDATE Transactions SET UserId=@UserId,Price=@Price,Date=@Date,Status=@Status  WHERE TransactionId=@TransactionId";
            var param = new
            {
                UserId = Transaction.UserId,
                Price = DbEvents.convertToLocalPrice(Transaction.Price),
                Date = Transaction.Date,
                Status = Transaction.Status,
                TransactionId= Transaction.TransactionId
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";

            DbEvents.addLog(Transaction.TransactionId + " numaralı tahsilat güncellendi.", Request.Cookies["token"].ToString());

            return OnGet();

        }
        public IActionResult OnPostDelete()
        {
            var id = Transaction.TransactionId;
            var con = DbEvents.getConnection();
            var sql = "DELETE from Transactions Where TransactionId=@Id";
            var param = new { Id = id };
            con.Execute(sql, param);

            DbEvents.addLog(Transaction.TransactionId + " numaralı tahsilat silindi.", Request.Cookies["token"].ToString());

            return RedirectToPage("/Transaction/List");
        }
    }
}