#pragma checksum "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\User\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "574b24830c3b5fae47f10e448cdfd9b84befbbe4"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(PaymentSystem.Pages.User.Pages_User_List), @"mvc.1.0.razor-page", @"/Pages/User/List.cshtml")]
namespace PaymentSystem.Pages.User
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"574b24830c3b5fae47f10e448cdfd9b84befbbe4", @"/Pages/User/List.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"05894160b795e5821249d23880d4a820a25a8099", @"/Pages/_ViewImports.cshtml")]
    public class Pages_User_List : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\User\List.cshtml"
  
    ViewData["Title"] = "Üyeler";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""container-fluid"">
    <div class=""row page-titles"">
        <div class=""col-md-5 align-self-center"">
            <h3 class=""text-themecolor"">Üyeler</h3>
        </div>
        <div class=""col-md-7 align-self-center"">
            <ol class=""breadcrumb"">
                <li class=""breadcrumb-item""><a href=""javascript:void(0)"">Anasayfa</a></li>
                <li class=""breadcrumb-item active"">Üyeler</li>
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
                                    <th>Adı</th>
                                    <th>Soyadı</th>
             ");
            WriteLiteral(@"                       <th>Kullanıcı Adı</th>
                                    <th>Oluşturulma Tarihi</th>
                                    <th>Borç</th>
                                    <th>Durum</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                            
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
#line 50 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\User\List.cshtml"
             Write(Json.Serialize(Model.User));

#line default
#line hidden
#nullable disable
            WriteLiteral(@",
            dom: 'Bfrtip',
            buttons: ['excel', 'pdf'],
            language:{url:'/assets/plugins/datatables/turkish.json'},
            columns: [
                { data: 'Name' },
                { data: 'FirstName' },
                { data: 'LastName' },
                { data: 'UserName' },
                { data: 'CreatedDate', render: function (data) { return new Date(data).toLocaleString() } },
                { data: 'Balance', render: function (data) { return parseFloat(data).toLocaleString(""tr-TR"", { style: 'currency', currency: 'TRY' }) } },
                { data: 'Status',render:function (data){if (data==1){return '<div class=\""badge badge-success\""> </div>'}else{return '<div class=\""badge badge-danger\""> </div>' }}},
                {
                    data: 'UserId', orderable: false, class: 'text-center',
                    render: function (data) {
                        return '<a href=""/Transaction/List?userid=' + data + '"" class=""btn btn-info waves-effect b");
            WriteLiteral(@"tn-sm""><i class=""mdi mdi-credit-card""></i></a><a href=""/Payment/List?userid=' + data + '"" class=""btn btn-info waves-effect btn-sm""><i class=""mdi mdi-credit-card-clock""></i></a><a href=""/User/Edit?id=' + data + '"" class=""btn btn-info waves-effect btn-sm""><i class=""mdi mdi-file-edit""></i></a>'

                    }
                }
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PaymentSystem.UserListModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystem.UserListModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystem.UserListModel>)PageContext?.ViewData;
        public PaymentSystem.UserListModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
