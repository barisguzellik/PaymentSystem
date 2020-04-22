#pragma checksum "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\Transaction\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "ed21ba9d9e03beb2727a53e16f598ddebaa232bb"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(PaymentSystem.Pages.Transaction.Pages_Transaction_List), @"mvc.1.0.razor-page", @"/Pages/Transaction/List.cshtml")]
namespace PaymentSystem.Pages.Transaction
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
#line 1 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\_ViewImports.cshtml"
using PaymentSystem;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"ed21ba9d9e03beb2727a53e16f598ddebaa232bb", @"/Pages/Transaction/List.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"05894160b795e5821249d23880d4a820a25a8099", @"/Pages/_ViewImports.cshtml")]
    public class Pages_Transaction_List : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\Transaction\List.cshtml"
  
    ViewData["Title"] = "Tahsilat";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""container-fluid"">
    <div class=""row page-titles"">
        <div class=""col-md-5 align-self-center"">
            <h3 class=""text-themecolor"">Tahsilat</h3>
        </div>
        <div class=""col-md-7 align-self-center"">
            <ol class=""breadcrumb"">
                <li class=""breadcrumb-item""><a href=""javascript:void(0)"">Anasayfa</a></li>
                <li class=""breadcrumb-item active"">Tahsilat</li>
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
                                    <th>Şirket</th>
                                    <th>Üye Adı</th>
                                    <th>Soyadı</th>
     ");
            WriteLiteral(@"                               <th>Tutar</th>
                                    <th>Ödeme Tarihi</th>
                                    <th>Durum</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th>");
#nullable restore
#line 42 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\Transaction\List.cshtml"
                                   Write(Model.totalTransaction);

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
#line 59 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\Transaction\List.cshtml"
             Write(Json.Serialize(Model.Transaction));

#line default
#line hidden
#nullable disable
            WriteLiteral(@",
            dom: 'Bfrtip',
            buttons: ['excel', 'pdf'],
            language:{url:'/assets/plugins/datatables/turkish.json'},
            columns: [
                { data: 'user.organization.name' },
                { data: 'user.firstName'},
                { data: 'user.lastName' },
                { data: 'price', render: function (data) { return parseFloat(data).toLocaleString(""tr-TR"", { style: 'currency', currency: 'TRY' }) } },
                { data: 'date', render: function (data) { return new Date(data).toLocaleString() } },
                { data: 'status', render: function (data) { if (data == 1) { return '<div class=\""badge badge-success\""> </div>' } else { return '<div class=\""badge badge-danger\""> </div>' } } },
                {
                    data: 'transactionId', orderable: false, class: 'text-center',
                    render: function (data) {
                        return '<a href=""/Transaction/Edit?id=' + data + '"" class=""btn btn-primary btn-sm""><i clas");
            WriteLiteral("s=\"fa fa-edit\"></i></a>\'\r\n\r\n                    }\r\n                }\r\n            ]\r\n        });\r\n    });\r\n</script>\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PaymentSystem.TransactionListModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystem.TransactionListModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystem.TransactionListModel>)PageContext?.ViewData;
        public PaymentSystem.TransactionListModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
