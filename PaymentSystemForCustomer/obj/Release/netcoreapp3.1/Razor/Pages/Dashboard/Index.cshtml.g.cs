#pragma checksum "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Dashboard\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "c43062461c5118b5c8bbeed19fd29db7b88f46d9"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(PaymentSystemForCustomer.Pages.Dashboard.Pages_Dashboard_Index), @"mvc.1.0.razor-page", @"/Pages/Dashboard/Index.cshtml")]
namespace PaymentSystemForCustomer.Pages.Dashboard
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c43062461c5118b5c8bbeed19fd29db7b88f46d9", @"/Pages/Dashboard/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"28c2abadf458369e21040b83e260f874392f0c14", @"/Pages/_ViewImports.cshtml")]
    public class Pages_Dashboard_Index : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Dashboard\Index.cshtml"
  
    ViewData["Title"] = "Gösterge";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""container-fluid"">
    <div class=""row"">


        <div class=""col-lg-4"">
            <div class=""card"">
                <div class=""card-body"">
                    <div class=""d-flex no-block"">
                        <div class=""m-r-20 align-self-center"">
                            <span class=""lstick m-r-20""></span>
                            <i class=""mdi mdi-credit-card-clock"" style=""font-size:40px;color:#398bf7;""></i>
                        </div>
                        <div class=""align-self-center"">
                            <h6 class=""text-muted m-t-10 m-b-0"">Toplam Borç</h6>
                            <h2 class=""m-t-0"">");
#nullable restore
#line 20 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Dashboard\Index.cshtml"
                                         Write(Model.totalPayment);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class=""col-lg-4"">
            <div class=""card"">
                <div class=""card-body"">
                    <div class=""d-flex no-block"">
                        <div class=""m-r-20 align-self-center"">
                            <span class=""lstick m-r-20""></span>
                            <i class=""mdi mdi-credit-card"" style=""font-size:40px;color:green;""></i>
                        </div>
                        <div class=""align-self-center"">
                            <h6 class=""text-muted m-t-10 m-b-0"">Toplam Ödeme</h6>
                            <h2 class=""m-t-0"">");
#nullable restore
#line 37 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Dashboard\Index.cshtml"
                                         Write(Model.totalTransaction);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class=""col-lg-4"">
            <div class=""card"">
                <div class=""card-body"">
                    <div class=""d-flex no-block"">
                        <div class=""m-r-20 align-self-center"">
                            <span class=""lstick m-r-20""></span>
                            <i class=""mdi mdi-credit-card"" style=""font-size:40px;color:darkred;""></i>
                        </div>
                        <div class=""align-self-center"">
                            <h6 class=""text-muted m-t-10 m-b-0"">Başarısız Ödeme</h6>
                            <h2 class=""m-t-0"">");
#nullable restore
#line 54 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Dashboard\Index.cshtml"
                                         Write(Model.totalTransactionFailure);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class=""col-lg-4"">
            <div class=""card"">
                <div class=""card-body"">
                    <div class=""d-flex no-block"">
                        <div class=""m-r-20 align-self-center"">
                            <span class=""lstick m-r-20""></span>
                            <i class=""mdi mdi-credit-card"" style=""font-size:40px;color:darkred;""></i>
                        </div>
                        <div class=""align-self-center"">
                            <h6 class=""text-muted m-t-10 m-b-0"">Geciken Ödeme</h6>
                            <h2 class=""m-t-0"">");
#nullable restore
#line 71 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Dashboard\Index.cshtml"
                                         Write(Model.totalDelayedPayment);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        

        <div class=""col-12"">
            <div class=""card"">
                <div class=""card-body"">
                    <div class=""table"">
                        <table id=""datatable"" style=""width:100%;"" class=""display nowrap table table-hover table-striped table-bordered"">
                            <thead>
                                <tr>
                                    <th>Tarih</th>
                                    <th>Log</th>
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
#line 106 "C:\Users\baris\source\repos\PaymentSystem\PaymentSystemForCustomer\Pages\Dashboard\Index.cshtml"
             Write(Json.Serialize(Model.Log));

#line default
#line hidden
#nullable disable
            WriteLiteral(@",
            dom: '',
            buttons: ['excel', 'pdf'],
            language: { url: '/assets/plugins/datatables/turkish.json' },
            order:[[0,""desc""]],
            columns: [
                { data: 'Date', render: function (data) { return new Date(data).toLocaleString() } },
                { data: 'Description' },
            ]
        });
    });
</script>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PaymentSystemForCustomer.DashboardIndexModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystemForCustomer.DashboardIndexModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<PaymentSystemForCustomer.DashboardIndexModel>)PageContext?.ViewData;
        public PaymentSystemForCustomer.DashboardIndexModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
