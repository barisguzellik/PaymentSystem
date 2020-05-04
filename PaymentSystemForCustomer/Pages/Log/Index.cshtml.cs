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
    public class LogIndexModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<dynamic> Log { get; set; }

        public void OnGet()
        {
            User User = DbEvents.getUserByToken(Request.Cookies["token"].ToString());

            var con = DbEvents.getConnection();
            var sql = "SELECT Logs.Date,Logs.Description FROM Logs";
            sql += " WHERE UserId=" + User.UserId + "";
            Log = con.QueryAsync<dynamic>(sql).Result.ToList();
        }
    }
}