using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentSystem.Model
{
    public class User
    {
        [Key]
        public int UserId { get; set; }
        public int OrganizationId { get; set; }
        public Organization Organization { get; set; }
        public int UserType { get; set; }
        [StringLength(100)] 
        public string UserName { get; set; }
        [StringLength(100)]
        public string Password { get; set; }
        [StringLength(50)]
        public string FirstName { get; set; }
        [StringLength(50)]
        public string LastName { get; set; }
        [DefaultValue(0)]
        public int Status { get; set; }
        public DateTime CreatedDate { get; set; }
        [StringLength(255)]
        public string Token { get; set; }
        public ICollection<Payment> Payments { get; set; }
        public ICollection<Log> Logs { get; set; }
    }
}
