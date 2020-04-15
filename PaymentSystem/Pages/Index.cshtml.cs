using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using PaymentSystem.Model;

namespace PaymentSystem.Pages
{
    public class IndexModel : PageModel
    {
        public int _userType { get; set; }
        public IndexModel()
        {
            
        }

        public void OnGet()
        {
            
        }
    }
}
