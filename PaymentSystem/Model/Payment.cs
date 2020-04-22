using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentSystem.Model
{
    public class Payment
    {
        [Key]
        public int PaymentId { get; set; }
        public int UserId { get; set; }
        public User User { get; set; }
        //public decimal Price { get; set; }
        public string Price { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime ExpiryDate { get; set; }
        [StringLength(255)]
        public string Description { get; set; }
        [DefaultValue(0)]
        public int Status { get; set; }
        [DefaultValue(0)]
        public int Visible { get; set; }
        

    }
}
