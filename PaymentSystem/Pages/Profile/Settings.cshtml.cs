using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;

namespace PaymentSystem
{
    public class SettingsModel : PageModel
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

            if (!string.IsNullOrEmpty(Request.Cookies["token"]))
            {
                string token = Request.Cookies["token"].ToString();
                string sql = "SELECT * FROM Users WHERE Token=@Token";
                var param = new { Token = token };
                User = con.QueryFirstOrDefaultAsync<User>(sql, param).Result;
            }

            return Page();
        }
        public IActionResult OnPostUpdate()
        {
            var con = DbEvents.getConnection();
            var sql = "UPDATE Users SET OrganizationId=@OrganizationId,UserName=@UserName,FirstName=@FirstName,LastName=@LastName,Password=@Password  WHERE UserId=@UserId";
            var param = new
            {
                OrganizationId = User.OrganizationId,
                UserName = User.UserName,
                FirstName = User.FirstName,
                LastName = User.LastName,
                Password = DbEvents.MD5Hash(User.Password),
                UserId = User.UserId
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";

            DbEvents.addLog(User.FirstName + " " + User.LastName + " isimli üye güncellendi.", Request.Cookies["token"].ToString());

            return OnGet();

        }
    }
}