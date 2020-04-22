using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using PaymentSystem.Model;
using Dapper;
using Microsoft.AspNetCore.Http;

namespace PaymentSystem.Pages
{
    public class IndexModel : PageModel
    {
        public DbEvents DbEvents = new DbEvents();

        public IndexModel()
        {
        }

        [BindProperty]
        public PaymentSystem.Model.User User { get; set; }
        [BindProperty]
        public string Error { get; set; }


        public void OnGet()
        {
        }
        public IActionResult OnPost()
        {
            var sql = "SELECT*FROM Users WHERE UserType=1 AND UserName=@username AND Password=@password AND Status=1";
            var param = new
            {
                username = User.UserName,
                password = DbEvents.MD5Hash(User.Password)
            };
            var con = DbEvents.getConnection();
            var d = con.QueryFirstOrDefaultAsync<User>(sql, param);
            if (d.Result != null)
            {
                Response.Cookies.Append("token", d.Result.Token, new CookieOptions { Expires = DateTime.Now.AddHours(2) });
                DbEvents.addLog("Giriş yapıldı.", d.Result.Token);
                return RedirectToPage("/Dashboard/Index");
            }
            else
            {
                Error = "showError()";
                return Page();
            }
        }
    }
}