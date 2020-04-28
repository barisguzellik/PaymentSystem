using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using Dapper;
using Microsoft.Data.SqlClient;

namespace PaymentSystem
{
    public class PaymentChannelAddModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public PaymentChannel PaymentChannel { get; set; }
        public string Message { get; set; }
        public void OnGet()
        {

        }
        public IActionResult OnPost()
        {
            var con = DbEvents.getConnection();
            var sql = "INSERT INTO PaymentChannel(Name,ApiKey,SecretKey,BaseUrl,CallbackUrl) Values(@Name,@ApiKey,@SecretKey,@BaseUrl,@CallbackUrl)";
            var param = new
            {
                Name = PaymentChannel.Name,
                ApiKey = PaymentChannel.ApiKey,
                SecretKey = PaymentChannel.SecretKey,
                BaseUrl = PaymentChannel.BaseUrl,
                CallbackUrl=PaymentChannel.CallbackUrl
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";
            
            DbEvents.addLog(PaymentChannel.Name + " isimli ödeme kanalı eklendi.", Request.Cookies["token"].ToString());

            return Page();

        }
    }
}