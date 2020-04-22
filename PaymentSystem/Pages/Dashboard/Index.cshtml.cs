using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Dapper;
using PaymentSystem.Model;
using System.Globalization;
namespace PaymentSystem
{
    public class DashboardIndexModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();

        public string totalOrganization { get; set; }
        public string totalUser { get; set; }
        public string totalPayment { get; set; }
        public string totalTransaction { get; set; }
        public string totalDelayedPayment { get; set; }

        public void OnGet()
        {
            var con = DbEvents.getConnection();
            var _totalOrganization = con.ExecuteScalar("SELECT COUNT(OrganizationId) FROM Organizations");
            totalOrganization = _totalOrganization.ToString();

            var _totalUser = con.ExecuteScalar("SELECT COUNT(UserId) FROM Users WHERE UserType=2");
            totalUser = _totalUser.ToString();

            var _totalPayment = con.ExecuteScalar("SELECT SUM(Price) FROM Payments");
            if (_totalPayment == null)
                _totalPayment = 0;
            totalPayment = Convert.ToDouble(_totalPayment).ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            var _totalTransaction = con.ExecuteScalar("SELECT SUM(Price) FROM Transactions");
            if (_totalTransaction == null)
                _totalTransaction = 0;
            totalTransaction = Convert.ToDouble(_totalTransaction).ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            var _totalDelayedPayment = con.ExecuteScalar("SELECT SUM(Price) FROM Payments WHERE ExpiryDate<'" + DateTime.Now + "'");
            if (_totalDelayedPayment == null)
                _totalDelayedPayment = 0;
            totalDelayedPayment = Convert.ToDouble(_totalDelayedPayment).ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            DbEvents.addLog("Gösterge listelendi.", Request.Cookies["token"].ToString());
        }
    }
}