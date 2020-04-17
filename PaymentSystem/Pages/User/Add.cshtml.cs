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
    public class UserAddModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        [BindProperty]
        public User User { get; set; }
        [BindProperty]
        public IList<Organization> Organizations { get; set; }
        public string Message { get; set; }

        public IActionResult OnGet()
        {
            var con = DbEvents.getConnection();
            Organizations = con.QueryAsync<Organization>("SELECT*FROM Organizations WHERE Status=1 ORDER BY Name").Result.ToList();
            return Page();
        }
        public IActionResult OnPost()
        {
            var con = DbEvents.getConnection();
            var sql = "INSERT INTO Users(OrganizationId,UserType,UserName,Password,FirstName,LastName,Status,CreatedDate,Token) Values(@OrganizationId,@UserType,@UserName,@Password,@FirstName,@LastName,@Status,@CreatedDate,@Token)";
            var param = new
            {
                OrganizationId=User.OrganizationId,
                UserType=User.UserType,
                UserName=User.UserName,
                Password=DbEvents.MD5Hash(User.Password),
                FirstName=User.FirstName,
                LastName=User.LastName,
                Status=User.Status,
                CreatedDate=DateTime.Now,
                Token=Guid.NewGuid()
            };

            con.ExecuteAsync(sql, param);
            Message = "showMessage()";

            return OnGet();
        }
    }
}