using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using Dapper;
namespace PaymentSystem
{
    public class UserListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<User> User { get; set; }

      

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT*FROM Users INNER JOIN Organizations on Users.OrganizationId=Organizations.OrganizationId";
            User = con.QueryAsync<User, Organization, User>
                (sql, (u, o) => { u.Organization = o; return u; }, splitOn: "OrganizationId").Result.ToList();
        }
    }
}