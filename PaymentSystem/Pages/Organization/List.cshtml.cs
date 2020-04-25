using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using Dapper;
using System.Dynamic;

namespace PaymentSystem
{
    public class ListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<dynamic> Organizations { get; set; }

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            string sql = "SELECT Organizations.*,(SELECT COUNT(UserId) FROM Users WHERE Users.OrganizationId = Organizations.OrganizationId AND Users.UserType=2) AS UserCount FROM Organizations";
            Organizations = con.QueryAsync<dynamic>(sql).Result.ToList();

            DbEvents.addLog("Şirketler listelendi.", Request.Cookies["token"].ToString());

        }
    }
}