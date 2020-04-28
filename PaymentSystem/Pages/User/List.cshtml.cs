using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using PaymentSystem.Model;
using Dapper;
using System.Globalization;
using System.Text.Json;

namespace PaymentSystem
{
    public class UserListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<dynamic> User { get; set; }

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            var sql = "SELECT Organizations.Name,UserType,FirstName,LastName,UserName,Users.CreatedDate,Users.Status,Users.UserId, ";
            sql += " ((SELECT SUM(Price) FROM Payments WHERE Payments.UserId=Users.UserId)-(SELECT SUM(Price) FROM Transactions WHERE Transactions.Status=1 AND Transactions.UserId=Users.UserId)) AS Balance FROM Users ";
            sql += " INNER JOIN Organizations on Users.OrganizationId=Organizations.OrganizationId";
            sql += " WHERE Users.UserType=2";
            if (!string.IsNullOrEmpty(Request.Query["organizationid"]))
            {
                int id = int.Parse(Request.Query["organizationid"].ToString());
                sql += " AND Users.OrganizationId=" + id;
            }
            User = con.QueryAsync<dynamic>(sql).Result.ToList();

            DbEvents.addLog("Üyeler listelendi.", Request.Cookies["token"].ToString());
        }
    }
}