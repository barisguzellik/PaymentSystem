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
            var con = DbEvents.getConnection();
            var sql = "INSERT INTO Transactions(UserId,Price,Date,Status) Values(@UserId,@Price,@Date,@Status)";
            var param = new
            {
                UserId = Transaction.UserId,
                Price = DbEvents.convertToLocalPrice(Transaction.Price),
                Date = Transaction.Date,
                Status = Transaction.Status
            };

            con.Execute(sql, param);
            Message = "showMessage()";

            DbEvents.addLog(Transaction.UserId + " numaralı kullanıcı için " + Transaction.Price + " tutarında tahsilat eklendi.", Request.Cookies["token"].ToString());

            return OnGet();
        }
    }
}