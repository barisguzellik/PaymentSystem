using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentSystem.Model
{
    public class Organization
    {
        [Key]
        public int OrganizationId { get; set; }
        [StringLength(100)]
        public string Name { get; set; }
        [StringLength(50)]
        public string Phone { get; set; }
        [StringLength(255)]
        public string Address { get; set; }
        [DefaultValue(0)]
        public int Status { get; set; }
        public ICollection<User> Users { get; set; }
    }
}
