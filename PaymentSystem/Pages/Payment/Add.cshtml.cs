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
    public class PaymentAddModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public Payment Payment { get; set; }
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
            var sql = "INSERT INTO Payments(UserId,Price,CreatedDate,ExpiryDate,Description,Status,Visible) Values(@UserId,@Price,@CreatedDate,@ExpiryDate,@Description,@Status,@Visible)";
            var param = new
            {
                UserId = Payment.UserId,
                Price = DbEvents.convertToLocalPrice(Payment.Price),
                CreatedDate =Payment.CreatedDate,
                ExpiryDate = Payment.ExpiryDate,
                Description = Payment.Description,
                Status = Payment.Status,
                Visible = Payment.Visible
            };

            con.Execute(sql, param);
            Message = "showMessage()";

            return OnGet();
        }
    }
}