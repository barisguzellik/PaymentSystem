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
    public class UserEditModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public User User { get; set; }
        [BindProperty]
        public IList<Organization> Organizations { get; set; }
        public string Message { get; set; }

        public IActionResult OnGet()
        {
            var con = DbEvents.getConnection();
            Organizations = con.QueryAsync<Organization>("SELECT*FROM Organizations WHERE Status=1 ORDER BY Name").Result.ToList();

            if (!string.IsNullOrEmpty(Request.Query["id"]))
            {
                int id = int.Parse(Request.Query["id"].ToString());
                string sql = "SELECT * FROM Users WHERE UserId=@Id";
                var param = new { Id = id };
                User = con.QueryFirstOrDefaultAsync<User>(sql, param).Result;
            }

            return Page();
        }
        public IActionResult OnPostUpdate()
        {
            var con = DbEvents.getConnection();
            var sql = "UPDATE Users SET OrganizationId=@OrganizationId,UserType=@UserType,UserName=@UserName,FirstName=@FirstName,LastName=@LastName,Status=@Status  WHERE UserId=@UserId";
            var param = new
            {
                OrganizationId = User.OrganizationId,
                UserType = User.UserType,
                UserName = User.UserName,
                FirstName = User.FirstName,
                LastName = User.LastName,
                Status = User.Status,
                UserId=User.UserId
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";
            return OnGet();

        }
        public IActionResult OnPostDelete()
        {
            var id = User.UserId;
            var con = DbEvents.getConnection();
            var sql = "DELETE from Users Where UserId=@Id";
            var param = new { Id = id };
            con.Execute(sql, param);

            return RedirectToPage("/User/List");
        }
    }
}