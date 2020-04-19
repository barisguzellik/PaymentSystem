using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentSystem.Model
{
    public class Transaction
    {
        [Key]
        public int TransactionId { get; set; }
        public int PaymentId { get; set; }
        public Payment Payment { get; set; }
        public DateTime Date { get; set; }
        //public decimal Price { get; set; }
        public string Price { get; set; }
        [DefaultValue(0)]
        public int Status { get; set; }
    }
}
