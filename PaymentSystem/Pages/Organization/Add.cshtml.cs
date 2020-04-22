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
    public class AddModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public Organization Organization { get; set; }
        public string Message { get; set; }
        public void OnGet()
        {

        }
        public IActionResult OnPost()
        {
            var con = DbEvents.getConnection();
            var sql = "INSERT INTO Organizations(Name,Phone,Address,Status) Values(@Name,@Phone,@Address,@Status)";
            var param = new
            {
                Name = Organization.Name,
                Phone = Organization.Phone,
                Address = Organization.Address,
                Status = Organization.Status
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";
            
            DbEvents.addLog(Organization.Name + " isimli şirket eklendi.", Request.Cookies["token"].ToString());

            return Page();

        }
    }
}