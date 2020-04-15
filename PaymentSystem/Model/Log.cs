using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentSystem.Model
{
    public class Log
    {
        [Key]
        public int LogId { get; set; }
        public DateTime Date { get; set; }
        [StringLength(255)]
        public string Description { get; set; }
        public int UserId { get; set; }
        public User User { get; set; }
    }
}
