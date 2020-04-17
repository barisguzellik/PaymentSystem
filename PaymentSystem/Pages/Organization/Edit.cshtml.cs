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
    public class EditModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public Organization Organization { get; set; }
        public string Message { get; set; }

        public void OnGet()
        {
            if (!string.IsNullOrEmpty(Request.Query["id"]))
            {
                int id = int.Parse(Request.Query["id"].ToString());
                var con = DbEvents.getConnection();
                string sql = "SELECT * FROM Organizations WHERE OrganizationId=@Id";
                var param = new { Id = id };
                Organization = con.QueryFirstOrDefaultAsync<Organization>(sql, param).Result;
            }
        }
        public IActionResult OnPostUpdate()
        {
            var con = DbEvents.getConnection();
            var sql = "UPDATE Organizations SET Name=@Name,Phone=@Phone,Address=@Address,Status=@Status WHERE OrganizationId=@OrganizationId";
            var param = new
            {
                Name = Organization.Name,
                Phone = Organization.Phone,
                Address = Organization.Address,
                Status = Organization.Status,
                OrganizationId = Organization.OrganizationId
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";
            return Page();

        }
        public IActionResult OnPostDelete()
        {
            var id = Organization.OrganizationId;
            var con = DbEvents.getConnection();
            var sql = "DELETE from Organizations Where OrganizationId=@Id";
            var param = new { Id = id };
            con.Execute(sql, param);

            return RedirectToPage("/Organization/List");
        }
    }
}