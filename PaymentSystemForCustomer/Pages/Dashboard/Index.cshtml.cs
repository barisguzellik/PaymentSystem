using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Dapper;
using PaymentSystem.Model;
using System.Globalization;
namespace PaymentSystemForCustomer
{
    public class DashboardIndexModel : PageModel
    {
        DbEvents DbEvents = new DbEvents();

        public List<Log> Log { get; set; }

        public string totalPayment { get; set; }
        public string totalTransaction { get; set; }
        public string totalTransactionFailure { get; set; }
        public string totalDelayedPayment { get; set; }

        public void OnGet()
        {

            User User = DbEvents.getUserByToken(Request.Cookies["token"].ToString());

            var con = DbEvents.getConnection();

            var _totalPayment = con.ExecuteScalar("SELECT SUM(Price) FROM Payments WHERE UserId="+User.UserId+"");
            if (_totalPayment == null)
                _totalPayment = 0;
            totalPayment = Convert.ToDouble(_totalPayment).ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            var _totalTransaction = con.ExecuteScalar("SELECT SUM(Price) FROM Transactions  WHERE UserId=" + User.UserId + " AND Status=1");
            if (_totalTransaction == null)
                _totalTransaction = 0;
            totalTransaction = Convert.ToDouble(_totalTransaction).ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            var _totalTransactionFailure = con.ExecuteScalar("SELECT SUM(Price) FROM Transactions  WHERE UserId=" + User.UserId + " AND Status=0");
            if (_totalTransactionFailure == null)
                _totalTransactionFailure = 0;
            totalTransactionFailure = Convert.ToDouble(_totalTransactionFailure).ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            var _totalDelayedPayment = con.ExecuteScalar("SELECT SUM(Price) FROM Payments  WHERE UserId=" + User.UserId + " AND ExpiryDate<'" + DateTime.Now + "'");
            if (_totalDelayedPayment == null)
                _totalDelayedPayment = 0;
            totalDelayedPayment = Convert.ToDouble(_totalDelayedPayment).ToString("C", CultureInfo.GetCultureInfo("tr-TR"));

            DbEvents.addLog("Gösterge listelendi.", Request.Cookies["token"].ToString());

            var sql = "SELECT TOP 10 * FROM Logs ";
            sql += " INNER JOIN Users on Users.UserId=Logs.UserId WHERE Users.UserId=" + User.UserId + " ORDER BY LogId DESC";
            Log = con.QueryAsync<Log, User, Log>
            (sql, (l, u) => { l.User = u; return l; }, splitOn: "UserId").Result.ToList();
        }
    }
}