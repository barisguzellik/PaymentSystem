using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentSystem.Model
{
    public class PaymentChannel
    {
        public int PaymentChannelId { get; set; }
        public string Name { get; set; }
        public string ApiKey { get; set; }
        public string SecretKey { get; set; }
        public string BaseUrl { get; set; }
        public string CallbackUrl { get; set; }
    }
}
