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
    public class PaymentChannelEditModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public PaymentChannel PaymentChannel { get; set; }
        public string Message { get; set; }

        public void OnGet()
        {
            if (!string.IsNullOrEmpty(Request.Query["id"]))
            {
                int id = int.Parse(Request.Query["id"].ToString());
                var con = DbEvents.getConnection();
                string sql = "SELECT * FROM PaymentChannel WHERE PaymentChannelId=@Id";
                var param = new { Id = id };
                PaymentChannel = con.QueryFirstOrDefaultAsync<PaymentChannel>(sql, param).Result;
            }
        }
        public IActionResult OnPostUpdate()
        {
            var con = DbEvents.getConnection();
            var sql = "UPDATE Organizations SET Name=@Name,ApiKey=@ApiKey,SecretKey=@SecretKey,BaseUrl=@BaseUrl,CallbackUrl=@CallbackUrl WHERE PaymentChannelId=@PaymentChannelId";
            var param = new
            {
                Name = PaymentChannel.Name,
                ApiKey = PaymentChannel.ApiKey,
                SecretKey = PaymentChannel.SecretKey,
                BaseUrl = PaymentChannel.BaseUrl,
                CallbackUrl = PaymentChannel.CallbackUrl,
                PaymentChannelId = PaymentChannel.PaymentChannelId
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";

            DbEvents.addLog(PaymentChannel.Name + " isimli ödeme kanalı güncellendi.", Request.Cookies["token"].ToString());

            return Page();

        }
        public IActionResult OnPostDelete()
        {
            var id = PaymentChannel.PaymentChannelId;
            var con = DbEvents.getConnection();
            var sql = "DELETE from PaymentChannel Where PaymentChannelId=@Id";
            var param = new { Id = id };
            con.Execute(sql, param);

            DbEvents.addLog(PaymentChannel.Name + " isimli ödeme kanalı silindi.", Request.Cookies["token"].ToString());

            return RedirectToPage("/PaymentChannel/List");
        }
    }
}