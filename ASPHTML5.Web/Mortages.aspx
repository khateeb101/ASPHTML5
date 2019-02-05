<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mortages.aspx.cs" Inherits="ASPHTML5.Web.Mortages"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Rent" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Src="~/UserControls/UCPropertySearch.ascx" TagName="UC_PropertySearch"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCValuationRequest.ascx" TagName="UC_ValuationRequest"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCPropertiesListing.ascx" TagName="UC_PropertiesListing"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<style type="text/css">
.middle_padd
{
    padding: 22px 0 18px 45px !important;    
}
</style>
    <script>        id = "mortgages"</script>
    <script>        id2 = ""</script>
    <link href="/includes/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />    
    <script src="/includes/SpryTabbedPanels.js" type="text/javascript"></script>
    <script type="text/javascript">
        function addsum() {
            var sumvalue = -(document.getElementById('<%=txtSelfFinance.ClientID%>').value) + +(document.getElementById('<%=txtPurchasingPrice.ClientID%>').value);
            if (isNaN(sumvalue)) {
                document.getElementById('<%=lblLoanAmount.ClientID%>').innerText = 'Invalid number';
            }
            else {
                document.getElementById('<%=lblLoanAmount.ClientID%>').innerText = sumvalue;
            }
            var sumvalue2 = (document.getElementById('<%=txtSelfFinance.ClientID%>').value) / (document.getElementById('<%=txtPurchasingPrice.ClientID%>').value) * 100;
            if (isNaN(roundNumber(sumvalue2, 2))) {
                document.getElementById('<%=lblTauxDautofinancement.ClientID%>').innerText = 'Invalid number';
            }
            else {
                document.getElementById('<%=lblTauxDautofinancement.ClientID%>').innerText = roundNumber(sumvalue2, 2) + '%';
            }
        }

        function calculateduree() {
            var sumvalue = document.getElementById('<%=txtLoanPeriod.ClientID%>').value;
            if (sumvalue < 60 || sumvalue > 240) {
                alert('Loan period must be between 60 and 240 months inclusive!');
                document.getElementById('<%=txtLoanPeriod.ClientID%>').innerText = 0;
                document.getElementById('<%=txtLoanPeriod.ClientID%>').focus();
            }
            //        document.getElementById('<%=txtLoanPeriod.ClientID%>').value = sumvalue;
            document.getElementById('<%=lblLoanPeriod.ClientID%>').innerText = sumvalue / 12;
            validateallperiod();
        }

        function validateallperiod() {
            //     var sumvalue1 = document.getElementById('ctl00_ContentPlaceHolder1_ddlGraceAll').value;
            //     var sumvalue2 = document.getElementById('ctl00_ContentPlaceHolder1_ddlGraceCapital').value;
            //     var sumvalue3 = document.getElementById('<%=txtLoanPeriod.ClientID%>').value;
            //     var totalsum = (+sumvalue1 + + sumvalue2 + + (+sumvalue3) );  //sumvalue2 ++ sumvalue3;
            // alert(totalsum);
            var totalinyears = document.getElementById('<%=lblLoanPeriod.ClientID%>').innerText;
            if (totalinyears > 20) {
                alert('Maximum Reimbursement Period of the Loan is 20 years');
                document.getElementById('<%=txtLoanPeriod.ClientID%>').innerText = 0;
            }
            recalculateduree();
        }

        function recalculateduree() {
            var sumvalue = document.getElementById('<%=txtLoanPeriod.ClientID%>').value;
            //        document.getElementById('<%=txtLoanPeriod.ClientID%>').value = sumvalue;
            document.getElementById('<%=lblLoanPeriod.ClientID%>').value = sumvalue / 12;

        }

        function validate() {
            if ((document.getElementById('<%=txtSelfFinance.ClientID%>').value) / (document.getElementById('<%=txtPurchasingPrice.ClientID%>').value) * 100 < 15) {
                alert('The minimum required down payment is 15%');
                document.getElementById('<%=txtSelfFinance.ClientID%>').value = 0;
            }
            else
            { addsum(); }
        }

        function roundNumber(rnum, rlength) { // Arguments: number to round, number of decimal places
            var newnumber = Math.round(rnum * Math.pow(10, rlength)) / Math.pow(10, rlength);
            //document.roundform.numberfield.value = newnumber; // Output the result to the form field (change for your purposes)
            return (newnumber);
        }

   
    </script>
    <h1 class="seo_title"><asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Text.Header%>" /></h1>
    <br />
    <div class="font14px">
        <div style="display: none">
            <asp:Label ID="Label1" Font-Bold="true" ForeColor="#97253d" Text="Housing Loan USD"
                runat="server" /></div>
                  <meta id="Meta1" name='description' runat="server" content='<%$ Resources:Meta.Desc %>' />
    <meta id="Meta2" name='keywords' runat="server" content='<%$ Resources:Meta.Keywords %>' />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <asp:UpdateProgress runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <asp:Image ImageUrl="~/images/loading.gif" runat="server" />
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel Visible="true" ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel runat="server" DefaultButton="btnCalculate" Visible="false">
                <h3 style="color: Red">
                    <asp:Literal Visible="false" ID="ltError" Text="An Error Has Occured Please try again Later!"
                        runat="server" /></h3>
                <div>
                    <img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
                <div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" runat="server" id="tbl1">
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #d7d7d7; font-weight: bold;
                                padding-left: 5px;">
                                Property Details
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td width="250px">
                                <b>Purchasing Price</b>
                            </td>
                            <td width="100px">
                            </td>
                            <td>
                                <b>Self-Financing Down Payment</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <img id="Img1" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server" alt="" />
                                        </td>
                                        <td class="input_bg">
                                            <input type="text" onchange="javascript:return addsum();" class="box" id="txtPurchasingPrice"
                                                value="0" runat="server" />
                                        </td>
                                        <td>
                                            <img id="Img2" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server" alt="" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                            </td>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <img id="Img3" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server" alt="" />
                                        </td>
                                        <td class="input_bg">
                                            <input type="text" class="box" id="txtSelfFinance" onchange="javascript:return validate();"
                                                value="0" runat="server" />
                                        </td>
                                        <td>
                                            <img id="Img4" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server" alt="" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 30px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #e8e8e8; font-weight: bold;
                                padding-left: 5px;">
                                Self Financing ratio:
                                <asp:Label Text="0" ID="lblTauxDautofinancement" ForeColor="#97253d" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 30px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #d7d7d7; font-weight: bold;
                                padding-left: 5px;">
                                Loan Details
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Grace Period On Interest and Principal amounts (in months)</b>
                            </td>
                            <td>
                            </td>
                            <td>
                                <b>Grace Period On Principal (in months)</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="ddlGraceMonthInterest" onchange="javascript:return calculateduree();"
                                    runat="server" CssClass="select">
                                    <asp:ListItem Text="0 months" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="6 months" Value="6"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlPrincipal" onchange="javascript:return calculateduree();"
                                    runat="server" CssClass="select">
                                    <asp:ListItem Text="0 months" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="6 months" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="12 months" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="18 months" Value="18"></asp:ListItem>
                                    <asp:ListItem Text="24 months" Value="24"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px;">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Total Loan Period (in Months)</b>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <img id="Img5" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server" alt="" />
                                        </td>
                                        <td class="input_bg">
                                            <input type="text" class="box" id="txtLoanPeriod" onchange="javascript:return calculateduree();"
                                                value="0" runat="server" />
                                        </td>
                                        <td>
                                            <img id="Img6" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server" alt="" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #e8e8e8; font-weight: bold;
                                padding-left: 5px;">
                                Loan Amount:
                                <asp:Label ID="lblLoanAmount" Text="0" ForeColor="#97253d" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #e8e8e8; font-weight: bold;
                                padding-left: 5px;">
                                Total Loan Period (in Years):
                                <asp:Label ID="lblLoanPeriod" Text="0" ForeColor="#97253d" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #e8e8e8; font-weight: bold;
                                padding-left: 5px;">
                                Interest Rate 1st year:
                                <asp:Label ID="Label2" Text="4.49%" ForeColor="#97253d" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 20px; background-color: #e8e8e8; font-weight: bold;
                                padding-left: 5px;">
                                Interest Rate for The Remaining Years:
                                <asp:Label ID="Label3" Text="6.52% *" ForeColor="#97253d" runat="server" /><br />
                                <asp:Label ID="Label4" Text="*" ForeColor="#97253d" runat="server" />Rate as of
                                today calculated based on Beirut Reference Rate
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 10px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: right">
                                <asp:ImageButton OnClientClick="this.style.display = 'none'" OnClick="imgCalculate_Click"
                                    runat="server" ID="btnCalculate" ImageUrl="images/calculateblf.jpg" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 30px;">
                            </td>
                        </tr>
                    </table>
            </asp:Panel>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" visible="false" runat="server"
                id="Table1">
                <tr>
                    <td colspan="3" style="height: 20px; background-color: #97253d; font-weight: bold;
                        padding-left: 5px;">
                        <b style="color: White">Loan Repayment</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="height: 20px;">
                    </td>
                </tr>
            </table>
            <div id="TabbedPanels1" class="TabbedPanels">
                <ul class="TabbedPanelsTabGroup">
                    <li id="liUSD" class="TabbedPanelsTab TabbedPanelsTabSelected" tabindex="0" style="background-image:url('images/btnUSD.png');"></li>
                    <li id="liLBP" class="TabbedPanelsTab" tabindex="0" style="background-image:url('../images/btnLBP.png'); margin-top:135px;"></li>
                </ul>
                <div class="TabbedPanelsContentGroup">
                    <div style="display: block;" class="TabbedPanelsContent TabbedPanelsContentVisible">
                        <iframe src="https://www.eblf.com/en/simulatorUSDIframe.aspx" frameborder="0" height="700" scrolling="No"
                            width="100%"></iframe>
                    </div>
                    <div style="display: none;" class="TabbedPanelsContent">
                        <iframe src="https://www.eblf.com/en/simulatorLBPIframe.aspx" frameborder="0" height="700" scrolling="No"
                            width="100%"></iframe>
                    </div>
                </div>
            </div>
            <asp:Panel runat="server" DefaultButton="ImageButton1" ID="tbl2" Visible="false">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <asp:Repeater runat="server" ID="rpt">
                        <ItemTemplate>
                            <tr style="background-color: #e8e8e8; font-weight: bold;">
                                <td style="height: 20px; padding-left: 5px;">
                                    <asp:Label runat="server" ID="lbl" Text='<%#Eval("Description") %>' />
                                </td>
                                <td style="width: 50px">
                                </td>
                                <td style="width: 50px">
                                    $
                                    <asp:Label ID="lblInstallement6Month" Text='<%#string.Format("{0:###,###,##0}", Eval("Amount")) %>'
                                        runat="server" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <%-- <tr>
                        <td colspan="3" style="height: 20px;">
                        </td>
                    </tr>
                    <tr style="background-color: #e8e8e8; font-weight: bold">
                        <td style="height: 20px;">
                            Monthly Installment during the first 6 months
                        </td>
                        <td style="width: 50px">
                        </td>
                        <td style="width: 50px">
                            $
                            <asp:Label ID="lblInstallement6Month" Text="0" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 3px;">
                        </td>
                    </tr>
                    <tr style="background-color: #e8e8e8; font-weight: bold">
                        <td style="height: 20px;">
                            Monthly Installment during the remaining period of the 1st year
                        </td>
                        <td>
                        </td>
                        <td>
                            $
                            <asp:Label ID="lblInstallementremainingYear" Text="0" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 3px;">
                        </td>
                    </tr>
                    <tr style="background-color: #e8e8e8; font-weight: bold">
                        <td style="height: 20px;">
                            Monthly Installment during the first 12 months of the second year
                        </td>
                        <td>
                        </td>
                        <td>
                            $
                            <asp:Label ID="lblInstallement12secondYear" Text="0" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 3px;">
                        </td>
                    </tr>
                    <tr style="background-color: #e8e8e8; font-weight: bold">
                        <td style="height: 20px;">
                            Monthly Installment during the remaining period
                        </td>
                        <td>
                        </td>
                        <td>
                            $
                            <asp:Label ID="lblInstallementremainingperiod" Text="0" runat="server" />
                        </td>
                    </tr>--%>
                    <tr>
                        <td colspan="3" style="height: 10px;">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: right">
                            <asp:ImageButton OnClick="imgCalculate1_Click" runat="server" ID="ImageButton1" ImageUrl="images/calculateblf.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 30px;">
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <%--
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="17" class="arrange_left_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                        <td class="arrange_middle">
                            <div class="font14px blue_text">
                                <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Text.NeedHelp%>" />
                                <span class="white_text">
                                    <asp:Literal ID="Literal12" runat="server" Text="<%$Resources:Text.Call%>" /></span></div>
                        </td>
                        <td width="17" class="arrange_right_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="17">
                            <img src="<%$Resources:Image.arrange_3%>" runat="server" alt="" />
                        </td>
                        <td class="arrange_3_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                        <td width="17">
                            <img src="<%$Resources:Image.arrange_4%>" runat="server" alt="" />
                        </td>
                    </tr>
                </table>--%>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <script type="text/javascript">
        var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
    </script>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
    <div class="pad_col_right">
        <div>
            <img src="/images/blf.jpg" alt="" /><br />
            <br />
        </div>
        <div>
            <img src="<%$Resources:Image.getting_started%>" runat="server" alt="" /></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
        <div class="arrow_blue_div">
            <a href="javascript:;">
                <asp:Literal ID="Literal14" runat="server" Text="<%$Resources:Text.LebanonProperty%>" /></a></div>
        <div class="arrow_blue_div">
            <a href="javascript:;">
                <asp:Literal ID="Literal16" runat="server" Text="<%$Resources:Text.HousesForSale%>" /></a></div>
        <div class="arrow_blue_div">
            <a href="javascript:;">
                <asp:Literal ID="Literal18" runat="server" Text="<%$Resources:Text.FlatsForSale%>" /></a></div>
        <div class="arrow_blue_div">
            <a href="javascript:;">
                <asp:Literal ID="Literal20" runat="server" Text="<%$Resources:Text.ApartmentsForSale%>" /></a></div>
        <div class="arrow_blue_div">
            <a href="javascript:;">
                <asp:Literal ID="Literal22" runat="server" Text="<%$Resources:Text.CommercialSPacesForSale%>" /></a></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
        <%--<div><a href="javascript:;"><img src="<%$Resources:Image.calculator%>" runat="server" alt="" border="0" /></a></div>--%>
    </div>
</asp:Content>
