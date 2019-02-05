<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MobileSearch.ascx.cs"
    Inherits="ASPHTML5.Web.Mobile.UserControls.MobileSearch" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script type="text/javascript">

        function validateText() {
            if (document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value == "Price from e.g. 200,000 USD") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value = "";
            }
            if (document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value == "Price to e.g. 500,000 USD") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value = "";
            }
            if (document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value == "Price from e.g. 20,000 USD/year") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value = "";
            }
            if (document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value == "Price to e.g. 50,000 USD/year") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value = "";
            }
            if (document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value == "Price from e.g. 1,500 USD/year") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value = "";
            }
            if (document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value == "Price to e.g. 3,000 USD/year") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value = "";
            }
            if (document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromSize").value == "Size from e.g. 180 m2") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromSize").value = "";
            }
            if (document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToSize").value == "Size to e.g. 220 m2") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToSize").value = "";
            }
        }

        function TextBoxChange(val) {
            if (val == "ctl00_cpMain_UC_PropertySearch1_rbList_0") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value = "Price from e.g. 200,000 USD";
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value = "e.g. 500,000 USD";
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 200,000 USD'}");
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 500,000 USD'}");
            }
            if (val == "ctl00_cpMain_UC_PropertySearch1_rbList_1") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value = "Price from e.g. 20,000 USD/year";
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value = "e.g. 50,000 USD/year";
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 20,000 USD/year'}");
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 50,000 USD/year'}");
            }
            if (val == "ctl00_cpMain_UC_PropertySearch1_rbList_2") {
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").value = "Price from e.g. 1,500 USD/year";
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").value = "e.g. 3,000 USD/year";
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtFromPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 1,500 USD/year'}");
                document.getElementById("ctl00_cpMain_UC_PropertySearch1_txtToPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 3,000 USD/year'}");
            }
        }

        function bindArea1() {
            document.getElementById('<%=txtarea.ClientID %>').value = document.getElementById('<%=ddlWhere.ClientID %>').options[document.getElementById('<%=ddlWhere.ClientID %>').selectedIndex].value;

        }
        function bindArea() {


            var theDropDown = document.getElementById('<%=ddlWhere.ClientID %>');

            theDropDown.options.length = 0;


            var opt = document.createElement("option");
            // Add an Option object to Drop Down/List Box
            document.getElementById('<%=ddlWhere.ClientID %>').options.add(opt);
            // Assign text and value to Option object
            opt.text = '<asp:Literal id="ltlOpt" runat="server" Text="<%$Resources:Text.ddlAllDistrict%>" />';
            opt.value = "_";

            var values = document.getElementById('<%= txtAreas.ClientID %>').value

            var mySplitResult = values.split("#");

            for (i = 0; i < mySplitResult.length; i++) {
                var address = mySplitResult[i].split(",");
                if (address[0] == document.getElementById('<%=ddlQadaa.ClientID %>').value) {
                    var opt = document.createElement("option");
                    // Add an Option object to Drop Down/List Box
                    document.getElementById('<%=ddlWhere.ClientID %>').options.add(opt);
                    // Assign text and value to Option object
                    opt.text = address[1];
                    opt.value = address[1];
                }
            }

        }
    </script>
    <style type="text/css">
        .style1
        {
            height: 27px;
        }
    </style>
</head>
<body>
    <asp:TextBox runat="server" ID="txtAreas" Style="display: none" />
    <asp:TextBox runat="server" ID="txtarea" Style="display: none" />
    <div style="width: 90%; margin: 0 auto" align="center">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <%--<td class="tabs_div_left">
                    <img src="/images/spacer.gif" alt="" />
                </td>--%>
                <td class="tabs_div_middle" height="194" valign="top">
                    <div class="tabs_div_hidden" id="divlocation1">
                        <table border="0" width="100%" cellspacing="0" cellpadding="0">
                            <tr>
                                <td colspan="3" width="100%" valign="top" class="style1">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="100%" class="padding_radio">
                                                <asp:DropDownList Width="100%" ID="rbList" runat="server" CssClass="select" Height="35px">
                                                    <%--AutoPostBack="true" OnSelectedIndexChanged="rbList_SelectedIndexChanged"--%>
                                                    <asp:ListItem Text="<%$Resources:Text.ddlAll%>" Value="0" Selected="True"></asp:ListItem>
                                                    <asp:ListItem Text="<%$Resources:Search.Buy%>" Value="1" Selected="False"></asp:ListItem>
                                                    <asp:ListItem Text="<%$Resources:Search.Rent%>" Value="2" Selected="False"></asp:ListItem>                                                   
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <%-- <td width="30" class="style1"></td>--%>
                                <%--<td width="150" valign="top" class="style1"></td>--%>
                            </tr>
                        </table>
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td valign="top">
                                    <asp:DropDownList Width="100%" ID="ddlQadaa" runat="server" CssClass="select" Height="35px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:DropDownList Width="100%" ID="ddlWhere" runat="server" Style="padding-top: 5px"
                                        CssClass="select" Height="35px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td valign="top" width="49%">
                                    <asp:TextBox Height="35px" Width="98%" runat="server" CssClass="box2" ID="txtFromPrice"
                                        ClientIDMode="static" Text="Price from e.g. 200,000 USD" Style="text-align: center;
                                        padding-top: 5px" onfocus="this.value=''" onblur="javascript:; if (this.value == ''){this.value='Price from e.g. 200,000 USD'}"></asp:TextBox>
                                </td>
                                <td width="2%">
                                </td>
                                <%--<asp:DropDownList ID="ddlFromPrice" runat="server" CssClass="select"></asp:DropDownList>--%>
                                <%--AutoPostBack="True" onselectedindexchanged="rbList_SelectedIndexChanged"<asp:DropDownList ID="ddlFromPriceRent" runat="server" CssClass="select" Visible='<%# rbList.SelectedValue == "2"  %>'></asp:DropDownList>--%>
                                <td valign="top" width="49%">
                                    <asp:TextBox Height="35px" Width="98%" runat="server" CssClass="box2" ID="txtToPrice"
                                        Text="Price to e.g. 500,000 USD" Style="text-align: center; padding-top: 5px"
                                        onfocus="this.value=''" onblur="javascript:;if(this.value==''){this.value='Price to e.g. 500,000 USD'}"></asp:TextBox>
                                    <%-- <asp:DropDownList ID="ddlToPrice" runat="server" CssClass="select"></asp:DropDownList>--%>
                                    <%--<asp:DropDownList ID="ddlToPriceRent" runat="server" CssClass="select" Visible='<%# rbList.SelectedValue == "2"  %>'></asp:DropDownList>--%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtFromPrice"
                                        ControlToValidate="txtToPrice" ValidationGroup="Search1" ErrorMessage="<%$Resources:Search.RangeValidation%>"
                                        Operator="GreaterThanEqual" Type="Currency" Display="Dynamic" />
                                </td>
                            </tr>
                        </table>
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td valign="top" width="49%">
                                    <asp:TextBox Height="35px" Width="98%" runat="server" CssClass="box2" ID="txtFromSize"
                                        Text="Size from e.g. 180 m2" Style="text-align: center; padding-top: 5px" onfocus="this.value=''"
                                        onblur="javascript:; if (this.value == ''){this.value='Size from e.g. 180 m2'}"></asp:TextBox>
                                    <%--AutoPostBack="True" onselectedindexchanged="rbList_SelectedIndexChanged"<asp:DropDownList ID="ddlFromPriceRent" runat="server" CssClass="select" Visible='<%# rbList.SelectedValue == "2"  %>'></asp:DropDownList>--%>
                                </td>
                                <td width="2%">
                                </td>
                                <td valign="top" width="49%">
                                    <asp:TextBox Height="35px" Width="98%" runat="server" CssClass="box2" ID="txtToSize"
                                        Text="Size to e.g. 220 m2" Style="text-align: center; padding-top: 5px" onfocus="this.value=''"
                                        onblur="javascript:; if (this.value == ''){this.value='Size to e.g. 220 m2'}"></asp:TextBox>
                                    <%--<asp:DropDownList ID="ddlToPriceRent" runat="server" CssClass="select" Visible='<%# rbList.SelectedValue == "2"  %>'></asp:DropDownList>--%>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top" class="padding_txt_rad" width="100%">
                                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtFromSize"
                                        ControlToValidate="txtToSize" ValidationGroup="Search1" ErrorMessage="<%$Resources:Search.RangeValidation%>"
                                        Operator="GreaterThanEqual" Type="Integer" Display="Dynamic" />
                                </td>
                            </tr>
                        </table>
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td valign="top">
                                    <asp:DropDownList Height="35px" Width="100%" ID="ddlPropertyType" runat="server"
                                        CssClass="select">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td valign="top">
                                    <asp:TextBox Text="Reference Number" onfocus="this.value=''" onblur="javascript:; if (this.value == ''){this.value='Reference Number'}"
                                        Height="35px" Width="100%" runat="server" CssClass="box2" ID="txtRef" Style="text-align: center"></asp:TextBox>
                            </tr>
                        </table>
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                        <table width="100%">
                            <tr>
                                <td valign="middle" align="center" class="textaligncenter padding_txt_rad" colspan="3">
                                    <asp:ImageButton runat="server" ID="btnSearchAll" ValidationGroup="Search1" ImageUrl="<%$Resources:Image.search%>"
                                        OnClick="btnSerachAll_Click" OnClientClick="validateText()" Width="50%" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <%--<td class="tabs_div_right">
                    <img src="/images/spacer.gif" alt="" />
                </td>--%>
            </tr>
        </table>
    </div>
</body>
</html>
