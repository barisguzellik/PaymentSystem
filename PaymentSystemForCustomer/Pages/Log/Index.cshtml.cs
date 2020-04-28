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
        public List<Log> Log { get; set; }

        public void OnGet()
        {
            User User = DbEvents.getUserByToken(Request.Cookies["token"].ToString());

            var con = DbEvents.getConnection();
            var sql = "SELECT*FROM Logs";
            sql += " INNER JOIN Users on Users.UserId=Logs.UserId WHERE Users.UserId=" + User.UserId + "";
            Log = con.QueryAsync<Log, User, Log>
            (sql, (l, u) => { l.User = u; return l; }, splitOn: "UserId").Result.ToList();
        }
    }
}