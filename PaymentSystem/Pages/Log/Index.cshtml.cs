using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using Dapper;
using System.Globalization;

namespace PaymentSystem
{
    public class LogIndexModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<dynamic> Log { get; set; }

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT Logs.Date,Users.FirstName,Users.LastName,Logs.Description FROM Logs";
            sql += " INNER JOIN Users on Users.UserId=Logs.UserId";
            Log = con.QueryAsync<dynamic>(sql).Result.ToList();
        }
    }
}