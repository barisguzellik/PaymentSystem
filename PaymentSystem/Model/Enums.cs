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
            Disable = 0,
            Enable = 1
        }
        public enum Visible
        {
            False = 0,
            True = 1
        }
    }
}
