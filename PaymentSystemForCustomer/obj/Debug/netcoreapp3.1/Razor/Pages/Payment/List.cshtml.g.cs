#pragma checksum "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Payment\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "a99335141992d636c0864c7a9088fe14322543b9"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(PaymentSystemForCustomer.Pages.Payment.Pages_Payment_List), @"mvc.1.0.razor-page", @"/Pages/Payment/List.cshtml")]
namespace PaymentSystemForCustomer.Pages.Payment
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"a99335141992d636c0864c7a9088fe14322543b9", @"/Pages/Payment/List.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"28c2abadf458369e21040b83e260f874392f0c14", @"/Pages/_ViewImports.cshtml")]
    public class Pages_Payment_List : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Payment\List.cshtml"
  
    ViewData["Title"] = "Borçlarım";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""container-fluid"">
    <div class=""row page-titles"">
        <div class=""col-md-5 align-self-center"">
            <h3 class=""text-themecolor"">Borçlarım</h3>
        </div>
        <div class=""col-md-7 align-self-center"">
            <ol class=""breadcrumb"">
                <li class=""breadcrumb-item""><a href=""javascript:void(0)"">Anasayfa</a></li>
                <li class=""breadcrumb-item active"">Borçlarım</li>
            </ol>
        </div>
    </div>
    <div class=""row"">
        <div class=""col-12"">
            <div class=""card"">
                <div class=""card-body"">
                    <div class=""table"">
                        <table id=""datatable"" style=""width:100%;"" class=""display nowrap table table-hover table-striped table-bordered"">
                            <thead>
                                <tr>
                                    <th>Oluşturulma Tarihi</th>
                                    <th>Tutar</th>
                                    <th>Vade T");
            WriteLiteral(@"arihi</th>
                                    <th>Açıklama</th>
                                    <th>Durum</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th>");
#nullable restore
#line 38 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Payment\List.cshtml"
                                   Write(Model.totalPayment);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</th>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('#datatable').DataTable({
            data: ");
#nullable restore
#line 55 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Payment\List.cshtml"
             Write(Json.Serialize(Model.Payment));

#line default
#line hidden
#nullable disable
            WriteLiteral(@",
            dom: 'Bfrtip',
            buttons: ['excel', 'pdf'],
            language:{url:'/assets/plugins/datatables/turkish.json'},
            columns: [
                { data: 'createdDate', render: function (data) { return new Date(data).toLocaleString() } },
                { data: 'price', render: function (data) { return parseFloat(data).toLocaleString(""tr-TR"", { style: 'currency', currency: 'TRY' }) } },
                { data: 'expiryDate', render: function (data) { return new Date(data).toLocaleString() } },
                { data: 'description'},
                { data: 'status', render: function (data) { if (data == 1) { return '<div class=\""badge badge-success\""> </div>' } else { return '<div class=\""badge badge-danger\""> </div>' } } },
                
            ]
        });
    });
</script>

");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PaymentSystemForCustomer.PaymentListModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystemForCustomer.PaymentListModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystemForCustomer.PaymentListModel>)PageContext?.ViewData;
        public PaymentSystemForCustomer.PaymentListModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591