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

            if (!string.IsNullOrEmpty(Request.Query["id"]))
            {
                int id = int.Parse(Request.Query["id"].ToString());
                string sqlPay = "SELECT * FROM Payments WHERE PaymentId=@Id";
                var param = new { Id = id };
                Payment = con.QueryFirstOrDefaultAsync<Payment>(sqlPay, param).Result;
            }

            return Page();
        }
        public IActionResult OnPostUpdate()
        {
            var con = DbEvents.getConnection();
            var sql = "UPDATE Payments SET UserId=@UserId,Price=@Price,CreatedDate=@CreatedDate,ExpiryDate=@ExpiryDate,Description=@Description,Status=@Status,Visible=@Visible  WHERE PaymentId=@PaymentId";
            var param = new
            {
                UserId = Payment.UserId,
                Price = DbEvents.convertToLocalPrice(Payment.Price),
                CreatedDate = Payment.CreatedDate,
                ExpiryDate = Payment.ExpiryDate,
                Description = Payment.Description,
                Status = Payment.Status,
                Visible = Payment.Visible,
                PaymentId=Payment.PaymentId
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";
            return OnGet();

        }
        public IActionResult OnPostDelete()
        {
            var id = Payment.PaymentId;
            var con = DbEvents.getConnection();
            var sql = "DELETE from Payments Where PaymentId=@Id";
            var param = new { Id = id };
            con.Execute(sql, param);

            return RedirectToPage("/Payment/List");
        }
    }
}