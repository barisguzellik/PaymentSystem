#pragma checksum "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\PaymentChannel\List.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "d7ee6ec2af887f54d09f07d7b9acc00b16819a79"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(PaymentSystem.Pages.PaymentChannel.Pages_PaymentChannel_List), @"mvc.1.0.razor-page", @"/Pages/PaymentChannel/List.cshtml")]
namespace PaymentSystem.Pages.PaymentChannel
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"d7ee6ec2af887f54d09f07d7b9acc00b16819a79", @"/Pages/PaymentChannel/List.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"05894160b795e5821249d23880d4a820a25a8099", @"/Pages/_ViewImports.cshtml")]
    public class Pages_PaymentChannel_List : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\PaymentChannel\List.cshtml"
  
    ViewData["Title"] = "Ödeme Kanalları";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""container-fluid"">
    <div class=""row page-titles"">
        <div class=""col-md-5 align-self-center"">
            <h3 class=""text-themecolor"">Ödeme Kanalları</h3>
        </div>
        <div class=""col-md-7 align-self-center"">
            <ol class=""breadcrumb"">
                <li class=""breadcrumb-item""><a href=""javascript:void(0)"">Anasayfa</a></li>
                <li class=""breadcrumb-item active"">Ödeme Kanalları</li>
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
                                    <th>Kanal</th>
                                    <th>Api Key</th>
                                    <th>Callb");
            WriteLiteral(@"ack Url</th>
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
#line 45 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystem\Pages\PaymentChannel\List.cshtml"
             Write(Json.Serialize(Model.PaymentChannels));

#line default
#line hidden
#nullable disable
            WriteLiteral(@",
            dom: 'Bfrtip',
            buttons: ['excel', 'pdf'],
            language:{url:'/assets/plugins/datatables/turkish.json'},
            columns: [
                { data: 'Name' },
                { data: 'ApiKey' },
                { data: 'CallbackUrl' },
                {
                    data: 'PaymentChannelId', orderable: false, class: 'text-right',
                    render: function (data) {
                        return '<a href=""/PaymentChannel/Edit?id=' + data + '"" class=""btn btn-info waves-effect btn-sm""><i class=""mdi mdi-file-edit""></i></a>'

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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PaymentSystem.PaymentChannelListModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystem.PaymentChannelListModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystem.PaymentChannelListModel>)PageContext?.ViewData;
        public PaymentSystem.PaymentChannelListModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
