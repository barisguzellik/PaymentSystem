using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentSystem.Model
{
    public class Enums
    {
        public enum UserType
        {
            Administrator = 1,
            User = 2
        }

        public enum Status
        {
            Pasif = 0,
            Aktif = 1
        }
        public enum Visible
        {
            Pasif = 0,
            Aktif = 1
        }
    }
}
