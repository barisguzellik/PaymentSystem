#pragma checksum "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Transaction\ThreeDPay.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "a8e89921845e31e441d434267004aaa710e65bb1"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(PaymentSystemForCustomer.Pages.Transaction.Pages_Transaction_ThreeDPay), @"mvc.1.0.razor-page", @"/Pages/Transaction/ThreeDPay.cshtml")]
namespace PaymentSystemForCustomer.Pages.Transaction
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\_ViewImports.cshtml"
using PaymentSystemForCustomer;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a8e89921845e31e441d434267004aaa710e65bb1", @"/Pages/Transaction/ThreeDPay.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"28c2abadf458369e21040b83e260f874392f0c14", @"/Pages/_ViewImports.cshtml")]
    public class Pages_Transaction_ThreeDPay : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Transaction\ThreeDPay.cshtml"
  
    ViewData["Title"] = "Tahsilat";

#line default
#line hidden
#nullable disable
            WriteLiteral("<script>\r\n");
#nullable restore
#line 7 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Transaction\ThreeDPay.cshtml"
Write(Html.Raw(@Model.Result));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n</script>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PaymentSystemForCustomer.ThreeDPayModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystemForCustomer.ThreeDPayModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystemForCustomer.ThreeDPayModel>)PageContext?.ViewData;
        public PaymentSystemForCustomer.ThreeDPayModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
