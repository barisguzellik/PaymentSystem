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
    public class ListModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();
        public List<Organization> Organizations { get; set; }

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            Organizations = con.QueryAsync<Organization>("SELECT*FROM Organizations").Result.ToList();
        }
    }
}