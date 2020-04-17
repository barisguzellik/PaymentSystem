using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using Microsoft.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using Microsoft.Extensions.Configuration;
using Dapper;
namespace PaymentSystem.Model
{
    public class DbEvents
    {

        public SqlConnection getConnection()
        {
            return new SqlConnection("Server=.\\SQLEXPRESS;Database=PaymentSystem;Trusted_Connection=Yes;");
        }

        public bool isLogin(string token)
        {
            var sql = "SELECT*FROM Users WHERE Token=@token AND UserType=1 AND Status=1";
            var param = new
            {
                token = token,
            };
            var con = getConnection();
            var d = con.QueryFirstOrDefaultAsync<User>(sql, param);
            if (d.Result != null)
                return true;
            else
                return false;
        }

        public string MD5Hash(string val)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] bytes = ASCIIEncoding.Default.GetBytes(val);
            byte[] encoded = md5.ComputeHash(bytes);
            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < encoded.Length; i++)
                strBuilder.Append(encoded[i].ToString("x2"));
            return strBuilder.ToString();
        }

        public string randomString()
        {
            Random random = new Random();
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, 32)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        public string getRandomFileName(string fileExtention)
        {
            string day = DateTime.Now.Day.ToString();
            string month = DateTime.Now.Month.ToString();
            string year = DateTime.Now.Year.ToString();
            string hour = DateTime.Now.Hour.ToString();
            string minutes = DateTime.Now.Minute.ToString();
            string second = DateTime.Now.Second.ToString();
            string milisecond = DateTime.Now.Millisecond.ToString();
            return day + month + year + hour + minutes + second + milisecond + fileExtention;
        }

        public string getLinkCreator(string text)
        {
            string strReturn = text.Trim();
            strReturn = strReturn.ToLower();
            strReturn = strReturn.Replace("ğ", "g");
            strReturn = strReturn.Replace("Ğ", "G");
            strReturn = strReturn.Replace("ü", "u");
            strReturn = strReturn.Replace("Ü", "U");
            strReturn = strReturn.Replace("ş", "s");
            strReturn = strReturn.Replace("Ş", "S");
            strReturn = strReturn.Replace("ı", "i");
            strReturn = strReturn.Replace("İ", "I");
            strReturn = strReturn.Replace("ö", "o");
            strReturn = strReturn.Replace("Ö", "O");
            strReturn = strReturn.Replace("ç", "c");
            strReturn = strReturn.Replace("Ç", "C");
            strReturn = strReturn.Replace("-", "+");
            strReturn = strReturn.Replace(" ", "+");
            strReturn = strReturn.Trim();
            strReturn = new System.Text.RegularExpressions.Regex("[^a-zA-Z0-9+]").Replace(strReturn, "");
            strReturn = strReturn.Trim();
            strReturn = strReturn.Replace("+", "-");
            return strReturn;
        }
        public string convertToLocalDate(DateTime date)
        {
            var d = String.Format("{0:dd/MM/yyyy}", date);
            return d;
        }
        public string convertToLocalDateAndTime(DateTime date)
        {
            var d = String.Format("{0:dd/MM/yyyy HH:mm:ss}", date);
            return d;
        }
        public string convertToServerDate(DateTime date)
        {
            var year = date.Year;
            var month = date.Month;
            var day = date.Day;
            return String.Format("{0:dd/MM/yyyy}", date);
        }
        public string convertToServerDateTime(DateTime date)
        {
            var year = date.Year;
            var month = date.Month;
            var day = date.Day;
            var hour = date.Hour;
            var minute = date.Minute;
            var second = date.Second;
            return String.Format("{0:dd/MM/yyyy HH:mm:ss}", date);
        }
        public string convertToLocalPrice(string price)
        {
            var t = price.Replace(".", "");
            t = t.Replace(",", ".");
            return t;
        }
        public string convertToNumberPrice(string price)
        {
            var p = String.Format("{0:N}", price);
            return p;
        }
    }
}
