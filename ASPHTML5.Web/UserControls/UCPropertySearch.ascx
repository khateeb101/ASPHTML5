<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCPropertySearch.ascx.cs"
    Inherits="ASPHTML5.Web.UserControls.UCPropertySearch" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script type="text/javascript">

        function validateText() {
            if (document.getElementById("txtFromPrice").value == "e.g. 200,000 USD") {
                document.getElementById("txtFromPrice").value = "";
            }
            if (document.getElementById("txtToPrice").value == "e.g. 500,000 USD") {
                document.getElementById("txtToPrice").value = "";
            }
            if (document.getElementById("txtFromPrice").value == "e.g. 20,000 USD/year") {
                document.getElementById("txtFromPrice").value = "";
            }
            if (document.getElementById("txtToPrice").value == "e.g. 50,000 USD/year") {
                document.getElementById("txtToPrice").value = "";
            }
            if (document.getElementById("txtFromPrice").value == "e.g. 1,500 USD/year") {
                document.getElementById("txtFromPrice").value = "";
            }
            if (document.getElementById("txtToPrice").value == "e.g. 3,000 USD/year") {
                document.getElementById("txtToPrice").value = "";
            }
            if (document.getElementById("txtFromPrice").value == "e.g. 1,500 USD/year") {
                document.getElementById("txtFromPrice").value = "";
            }
            if (document.getElementById("txtToPrice").value == "e.g. 50,000 USD/year") {
                document.getElementById("txtToPrice").value = "";
            }
            if (document.getElementById("txtFromSize").value == "e.g. 180 m2") {
                document.getElementById("txtFromSize").value = "";
            }
            if (document.getElementById("txtToSize").value == "e.g. 220 m2") {
                document.getElementById("txtToSize").value = "";
            }
        }

        function TextBoxChange(val) {
            if (val == "rdb1") {
                document.getElementById("txtFromPrice").value = "e.g. 200,000 USD";
                document.getElementById("txtToPrice").value = "e.g. 500,000 USD";
                document.getElementById("txtFromPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 200,000 USD'}");
                document.getElementById("txtToPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 500,000 USD'}");
            }
            if (val == "rdb2") {
                document.getElementById("txtFromPrice").value = "e.g. 20,000 USD/year";
                document.getElementById("txtToPrice").value = "e.g. 50,000 USD/year";
                document.getElementById("txtFromPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 20,000 USD/year'}");
                document.getElementById("txtToPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 50,000 USD/year'}");
            }
            if (val == "rdb3") {
                document.getElementById("txtFromPrice").value = "e.g. 1,500 USD/year";
                document.getElementById("txtToPrice").value = "e.g. 3,000 USD/year";
                document.getElementById("txtFromPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 1,500 USD/year'}");
                document.getElementById("txtToPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 3,000 USD/year'}");
            } if (val == "rdb4") {
                document.getElementById("txtFromPrice").value = "e.g. 1,500 USD/year";
                document.getElementById("txtToPrice").value = "e.g. 50,000 USD/year";
                document.getElementById("txtFromPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 1,500 USD/year'}");
                document.getElementById("txtToPrice").setAttribute("onblur", "javascript:;if(this.value==''){this.value='e.g. 50,000 USD/year'}");
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
            opt.text = '<asp:Literal runat="server" Text="<%$Resources:Text.ddlAll%>" />';
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
        .tabs_div_hidden2
        {
            padding: 28px 0px 12px 30px;
        }
        .hidden
        {
            display: none;
        }
    </style>
</head>
<body>
    <div style="width: 558px; margin: 0px auto;">
        <asp:TextBox runat="server" ID="txtAreas" Style="display: none" />
        <asp:TextBox runat="server" ID="txtarea" Style="display: none" />
        <table border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="0">
                    <img src="<%$Resources:Image.tabs_sec_1%>" alt="" runat="server" id="imgDiff" visible="false" />
                </td>
                <td width="0" runat="server" id="tdDiff" visible="false">
                </td>
                <td>
                    <table border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td valign="bottom">
                                <%--<div class="tabs_div_left" style="padding-left:11px;height: 30px;"></div>--%>
                                <img src="/images/tabs_sec_1.gif">
                            </td>
                            <td valign="top">
                                <div>
                                    <img src="<%$Resources:Image.tabs_sec_top1%>" alt="" runat="server" /></div>
                                <div class="tab" id="location1">
                                    <a href="javascript:;" onclick="ShowHideTabs('location1')">
                                        <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Tab.PropertySearch%>" /></a></div>
                            </td>
                            <td>
                                <img src="<%$Resources:Image.tabs_sec_2%>" runat="server" alt="" />
                            </td>
                            <td valign="top">
                                <div>
                                    <img src="<%$Resources:Image.tabs_sec_top2%>" runat="server" alt="" /></div>
                                <div class="tab" id="location2">
                                    <a href="javascript:;" onclick="ShowHideTabs('location2')">
                                        <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Tab.SearchByReference%>" /></a></div>
                            </td>
                            <td>
                                <img src="<%$Resources:Image.tabs_sec_3%>" runat="server" alt="" />
                            </td>
                            <td valign="top">
                                <div>
                                    <img src="<%$Resources:Image.tabs_sec_top3%>" runat="server" alt="" /></div>
                                <div class="tab" id="location3">
                                    <a href="javascript:;" onclick="ShowHideTabs('location3')">
                                        <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:Tab.SavedSearches%>" /></a></div>
                            </td>
                            <td>
                                <img src="<%$Resources:Image.tabs_sec_4%>" runat="server" alt="" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="13">
                    <img src="<%$Resources:Image.tabs_sec_5%>" runat="server" alt="" />
                </td>
            </tr>
        </table>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="15" class="tabs_div_left">
                                <img src="/images/spacer.gif" alt="" />
                            </td>
                            <td class="tabs_div_middle" height="194" valign="top">
                                <div class="tabs_div_hidden" id="divlocation1">
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="136" valign="middle" class="style1">
                                                <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Search.IWantTo%>" />
                                            </td>
                                            <td valign="top" class="style1">
                                                <table border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td class="padding_radio">
                                                            <asp:RadioButtonList runat="server" ID="rbList" RepeatDirection="Horizontal">
                                                                <%--AutoPostBack="true" OnSelectedIndexChanged="rbList_SelectedIndexChanged"--%>
                                                                <asp:ListItem Text="<%$Resources:Search.Buy%>" Value="1" Selected="True" onclick="TextBoxChange('rdb1')"></asp:ListItem>
                                                                <asp:ListItem Text="<%$Resources:Search.Rentall%>" Value="4" Selected="False" onclick="TextBoxChange('rdb4')"></asp:ListItem>
                                                            </asp:RadioButtonList>
                                                        </td>
                                                        <%--<asp:ListItem Text="<%$Resources:Search.RentLong%>" Value="2" Selected="False" onclick="TextBoxChange('rdb2')"></asp:ListItem>
            <asp:ListItem Text="<%$Resources:Search.RentShort%>" Value="3" Selected="False"  onclick="TextBoxChange('rdb3')"></asp:ListItem>  --%>
                                                    </tr>
                                                </table>
                                            </td>
                                            <%-- <td width="30" class="style1"></td>--%>
                                            <%--<td width="150" valign="top" class="style1"></td>--%>
                                        </tr>
                                    </table>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="136" valign="top" class="padding_txt_rad">
                                                <asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Search.PropertyType%>" />
                                            </td>
                                            <td width="149" valign="top">
                                                <asp:DropDownList ID="ddlPropertyType" runat="server" CssClass="select">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="30" class="textaligncenter">
                                            </td>
                                            <td width="149" valign="middle" class="textaligncenter padding_txt_rad">
                                            </td>
                                        </tr>
                                    </table>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="136" valign="top" class="padding_txt_rad">
                                                <asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Search.Where%>" />
                                            </td>
                                            <td width="149" valign="top">
                                                <asp:DropDownList ID="ddlQadaa" runat="server" CssClass="select">
                                                </asp:DropDownList>
                                            </td>
                                            <td width="30" class="textaligncenter">
                                            </td>
                                            <td width="149" valign="top">
                                                <asp:DropDownList ID="ddlWhere" runat="server" CssClass="select">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="136" valign="top" class="padding_txt_rad">
                                                <asp:Literal ID="Literal6" runat="server" Text="<%$Resources:Search.PriceRange%>" />&nbsp;
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtFromPrice"
                                                    ControlToValidate="txtToPrice" ValidationGroup="Search1" ErrorMessage="<%$Resources:Search.RangeValidation%>"
                                                    Operator="GreaterThanEqual" Type="Currency" Display="Dynamic" />
                                            </td>
                                            <td class="hidden" width="149" valign="top">
                                                <%--Text="e.g. 200,000 USD"--%>
                                                <asp:TextBox runat="server" CssClass="box2" ID="txtFromPrice" ClientIDMode="static"
                                                    Text="0" Style="text-align: center" onfocus="this.value=''" onblur="javascript:; if (this.value == ''){this.value='e.g. 200,000 USD'}"></asp:TextBox>
                                                <%--<asp:DropDownList ID="ddlFromPrice" runat="server" CssClass="select"></asp:DropDownList>--%>
                                                <%--AutoPostBack="True" onselectedindexchanged="rbList_SelectedIndexChanged"<asp:DropDownList ID="ddlFromPriceRent" runat="server" CssClass="select" Visible='<%# rbList.SelectedValue == "2"  %>'></asp:DropDownList>--%>
                                            </td>
                                            <td class="hidden" width="30" class="textaligncenter">
                                                ->
                                            </td>
                                            <td width="149" valign="top">
                                                <asp:TextBox runat="server" CssClass="box2" ID="txtToPrice" ClientIDMode="Static"
                                                    Text="e.g. 500,000 USD" Style="text-align: center" onfocus="this.value=''" onblur="javascript:;if(this.value==''){this.value='e.g. 500,000 USD'}"></asp:TextBox>
                                                <%-- <asp:DropDownList ID="ddlToPrice" runat="server" CssClass="select"></asp:DropDownList>--%>
                                                <%--<asp:DropDownList ID="ddlToPriceRent" runat="server" CssClass="select" Visible='<%# rbList.SelectedValue == "2"  %>'></asp:DropDownList>--%>
                                            </td>
                                        </tr>
                                    </table>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="136" valign="top" class="padding_txt_rad">
                                                <asp:Literal ID="Literal13" runat="server" Text="<%$Resources:Search.SizeRange%>" />&nbsp;
                                                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txtFromSize"
                                                    ControlToValidate="txtToSize" ValidationGroup="Search1" ErrorMessage="<%$Resources:Search.RangeValidation%>"
                                                    Operator="GreaterThanEqual" Type="Integer" Display="Dynamic" />
                                            </td>
                                            <td width="149" valign="top">
                                                <asp:TextBox runat="server" CssClass="box2" ID="txtFromSize" ClientIDMode="Static"
                                                    Text="e.g. 180 m2" Style="text-align: center" onfocus="this.value=''" onblur="javascript:; if (this.value == ''){this.value='e.g. 180 m2'}"></asp:TextBox>
                                                <%--AutoPostBack="True" onselectedindexchanged="rbList_SelectedIndexChanged"<asp:DropDownList ID="ddlFromPriceRent" runat="server" CssClass="select" Visible='<%# rbList.SelectedValue == "2"  %>'></asp:DropDownList>--%>
                                            </td>
                                            <td class="hidden" width="30" class="textaligncenter">
                                                ->
                                            </td>
                                            <td class="hidden" width="149" valign="top">
                                                <%--Text="e.g. 220 m2"--%>
                                                <asp:TextBox runat="server" CssClass="box2" ID="txtToSize" ClientIDMode="Static"
                                                    Text="999999" Style="text-align: center" onfocus="this.value=''" onblur="javascript:; if (this.value == ''){this.value='e.g. 220 m2'}"></asp:TextBox>
                                                <%--<asp:DropDownList ID="ddlToPriceRent" runat="server" CssClass="select" Visible='<%# rbList.SelectedValue == "2"  %>'></asp:DropDownList>--%>
                                            </td>
                                        </tr>
                                    </table>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="136" valign="top" class="padding_txt_rad">
                                                <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:Search.Bedrooms%>" />&nbsp;
                                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="ddlFromBedroom"
                                                    ControlToValidate="ddlToBedroom" ValidationGroup="Search1" ErrorMessage="<%$Resources:Search.RangeValidation%>"
                                                    Operator="GreaterThan" Type="Integer" Display="Dynamic" />
                                            </td>
                                            <td width="149" valign="top">
                                                <asp:DropDownList ID="ddlFromBedroom" runat="server" CssClass="select">
                                                </asp:DropDownList>
                                            </td>
                                            <td class="hidden" width="30" class="textaligncenter">
                                                ->
                                            </td>
                                            <td class="hidden" width="149" valign="top">
                                                <asp:DropDownList ID="ddlToBedroom" runat="server" CssClass="select">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </table>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="136" valign="top" class="padding_txt_rad">
                                            </td>
                                            <td width="149" valign="top">
                                            </td>
                                            <td width="30" class="textaligncenter">
                                            </td>
                                            <td width="149" valign="middle" class="textaligncenter padding_txt_rad">
                                                <asp:ImageButton runat="server" ID="btnSerachAll" ValidationGroup="Search1" ImageUrl="<%$Resources:Image.search%>"
                                                    OnClick="btnSerachAll_Click" OnClientClick="validateText()" />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tabs_div_hidden" style="display: none" id="divlocation2">
                                    <div>
                                        <asp:Literal ID="Literal9" runat="server" Text="<%$Resources:Search.PropertyReferenceSearch%>" /></div>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
                                    <div class="blue_text2 font10px">
                                        <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Search.GoDirectly%>" /><a
                                            href="javascript:;">sodecogestion.com</a></div>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="44" /></div>
                                    <asp:Panel runat="server" DefaultButton="btnSerachByRef">
                                        <table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="136">
                                                    <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Search.Reference%>" />
                                                </td>
                                                <td width="149">
                                                    <asp:TextBox ID="txtReference" runat="server" CssClass="box2" />
                                                </td>
                                                <td width="13">
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="btnSerachByRef" runat="server" OnClick="btnSerachByRef_Click"
                                                        ImageUrl="<%$Resources:Image.GO%>" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </div>
                                <div class="tabs_div_hidden" style="display: none" id="divlocation3">
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="207">
                                                <asp:Literal ID="Literal12" runat="server" Text="<%$Resources:Search.EmailAddress%>" />
                                            </td>
                                            <td width="149">
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="box2"></asp:TextBox>
                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail"
                                                    ErrorMessage="*" ValidationGroup="SavedSearch"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                                    Display="Dynamic" ErrorMessage="<%$Resources:Error.IncorrectEmail%>" ValidationGroup="SavedSearch"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                    </table>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="207">
                                            </td>
                                            <td width="300">
                                                <asp:ImageButton runat="server" ID="imgSavedSearch" ValidationGroup="SavedSearch"
                                                    ImageUrl="<%$Resources:Image.Submit2%>" OnClick="imgSavedSearch_Click" /><asp:ImageButton
                                                        runat="server" ID="imgDisplayResults" ValidationGroup="SavedSearch" ImageUrl="<%$Resources:Image.DisplayResults%>"
                                                        OnClick="imgDisplayResults_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                    <%--<div><img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
        <div class="arrow_blue_div2"><asp:Literal ID="Literal13" runat="server" Text="<%$Resources:Search.WeAskEmailAddress%>" /></div>--%>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="7" /></div>
                                    <div>
                                        <asp:Literal ID="Literal14" runat="server" Text="<%$Resources:Search.SavedSearch%>" /></div>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="2" /></div>
                                    <div class="correct_div">
                                        <asp:Literal ID="Literal15" runat="server" Text="<%$Resources:Search.SavedSearch1%>" /></div>
                                    <div class="correct_div">
                                        <asp:Literal ID="Literal16" runat="server" Text="<%$Resources:Search.SavedSearch2%>" /></div>
                                    <div class="correct_div">
                                        <asp:Literal ID="Literal17" runat="server" Text="<%$Resources:Search.SavedSearch3%>" /></div>
                                    <div class="correct_div">
                                        <asp:Literal ID="Literal18" runat="server" Text="<%$Resources:Search.SavedSearch4%>" /></div>
                                </div>
                            </td>
                            <td width="13" class="tabs_div_right">
                                <img src="/images/spacer.gif" alt="" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="15">
                        <img src="<%$Resources:Image.tabs_div_1%>" runat="server" alt="" />
                    </td>
                    <td class="tabs_div_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                    <td width="13">
                        <img src="<%$Resources:Image.tabs_div_2%>" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <script>
        // Function to show first tab
        ShowHideTabs('location1');
        if (document.URL.toLowerCase().search('index') == -1) {
            divlocation1.className = 'tabs_div_hidden2';
            divlocation2.className = 'tabs_div_hidden2';
            divlocation3.className = 'tabs_div_hidden2';
        }
    </script>
</body>
</html>
