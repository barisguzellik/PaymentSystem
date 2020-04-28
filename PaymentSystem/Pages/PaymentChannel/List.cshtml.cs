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
    public class PaymentChannelListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<dynamic> PaymentChannels { get; set; }

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            string sql = "SELECT * FROM PaymentChannel";
            PaymentChannels = con.QueryAsync<dynamic>(sql).Result.ToList();

            DbEvents.addLog("Ödeme kanalları listelendi.", Request.Cookies["token"].ToString());

        }
    }
}