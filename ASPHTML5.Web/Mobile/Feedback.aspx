<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true"
    CodeBehind="Feedback.aspx.cs" Inherits="ASPHTML5.Web.Mobile.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="contact_form_padd">
        <div class="blue_bg_div">
            <div>
                <asp:Image ImageUrl="~/images/spacer.gif" Width="1" Height="23" runat="server" />
            </div>
            <div id="divMain" runat="server">
                <table width="100%" style="padding-left: 5px" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td valign="top" colspan="5">
                            <div class="font12px white_text fontbold">
                                <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.YourComments%>" /></div>
                        </td>
                    </tr>
                    <tr>
                        <td width="200" valign="top" class="padding_txt_rad">
                            <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.Comments%>" />
                            &nbsp;<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPropertyDetails"
                                ErrorMessage="*" ValidationGroup="feedback"></asp:RequiredFieldValidator>--%>
                        </td>
                        <td width="5">
                        </td>
                        <td valign="top" width="90%" colspan="5" align="center">
                            <textarea rows="5" style="width: 90%" id="txtPropertyDetails" runat="server"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" colspan="5">
                            <div class="font12px white_text fontbold">
                                <asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Text.YourDetails%>" /></div>
                            <div>
                                <asp:Image ID="Image3" ImageUrl="~/images/spacer.gif" Width="1" Height="20" runat="server" /></div>
                        </td>
                    </tr>
                    <tr>
                        <td width="90" valign="top" class="padding_txt_rad">
                            <asp:Literal ID="Literal6" runat="server" Text="<%$Resources:Text.Title%>" />
                        </td>
                        <td width="5">
                        </td>
                        <td valign="top" align="center" colspan="5">
                            <select class="select" style="width: 50%;" id="ddlTitle" runat="server">
                                <option value="<%$Resources:Text.TitleMr%>" title="Mr"></option>
                                <option value="<%$Resources:Text.TitleMrs%>" title="Mrs"></option>
                                <option value="<%$Resources:Text.TitleMiss%>" title="Miss"></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10">
                            <asp:Image ID="Image8" ImageUrl="~/images/spacer.gif" Width="1" Height="10" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td width="150" valign="top" class="padding_txt_rad">
                            <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:Text.FirstName%>" />&nbsp;<asp:RequiredFieldValidator
                                ID="RequiredFieldValidator2" ValidationGroup="feedback" runat="server" ControlToValidate="txtFirstName"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td width="5">
                        </td>
                        <td align="right" valign="middle">
                            <asp:Image ID="Img1" ImageUrl="<%$Resources:Image.input_left%>" runat="server" />
                        </td>
                        <td class="input_bg" style="background-position: center">
                            <input type="text" class="box" style="width: 90%" id="txtFirstName" runat="server" />
                        </td>
                        <td>
                            <asp:Image ID="Img2" ImageUrl="<%$Resources:Image.input_right%>" runat="server" alt="" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10">
                            <asp:Image ID="Image1" ImageUrl="~/images/spacer.gif" Width="1" Height="10" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td width="90" valign="top" class="padding_txt_rad">
                            <asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Text.Surname%>" /><asp:RequiredFieldValidator
                                ID="RequiredFieldValidator3" ValidationGroup="feedback" runat="server" ControlToValidate="txtLastName" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td width="5">
                        </td>
                        <td align="right">
                            <asp:Image ID="Img3" ImageUrl="<%$Resources:Image.input_left%>" runat="server" alt="" />
                        </td>
                        <td class="input_bg" style="background-position: center">
                            <input type="text" class="box" style="width: 90%" id="txtLastName" runat="server" />
                        </td>
                        <td>
                            <asp:Image ID="Img4" ImageUrl="<%$Resources:Image.input_right%>" runat="server" alt="" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10">
                            <asp:Image ID="Image2" ImageUrl="~/images/spacer.gif" Width="1" Height="10" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td width="90" valign="top" class="padding_txt_rad">
                            <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Text.Phone%>" />
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="feedback" runat="server" ControlToValidate="txtPhone"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td width="5">
                        </td>
                        <td align="right">
                            <asp:Image ID="Img5" ImageUrl="<%$Resources:Image.input_left%>" runat="server" alt="" />
                        </td>
                        <td class="input_bg" style="background-position: center">
                            <input type="text" class="box" style="width: 90%" id="txtPhone" runat="server" />
                        </td>
                        <td>
                            <asp:Image ID="Img6" ImageUrl="<%$Resources:Image.input_right%>" runat="server" alt="" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10">
                            <asp:Image ID="Image4" ImageUrl="~/images/spacer.gif" Width="1" Height="10" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td width="90" valign="top" class="padding_txt_rad">
                            <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Text.Email%>" />
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="feedback" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ValidationGroup="feedback" ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                Display="Dynamic" ErrorMessage="<%$Resources:Error.IncorrectEmail%>" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                        <td width="5">
                        </td>
                        <td align="right">
                            <asp:Image ID="Img7" ImageUrl="<%$Resources:Image.input_left%>" runat="server" alt="" />
                        </td>
                        <td class="input_bg" style="background-position: center">
                            <input type="text" class="box" style="width: 90%" id="txtEmail" runat="server" />
                        </td>
                        <td>
                            <asp:Image ID="Img8" ImageUrl="<%$Resources:Image.input_right%>" runat="server" alt="" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="10">
                            <asp:Image ID="Image5" ImageUrl="~/images/spacer.gif" Width="1" Height="10" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td width="90" valign="top" class="padding_txt_rad">
                        </td>
                        <td width="5">
                        </td>
                        <td valign="top" align="right" width="105" colspan="2">
                            <div align="right">
                                <asp:ImageButton ID="imgSubmit" ValidationGroup="feedback" runat="server" ImageUrl="<%$Resources:Image.Submit%>"
                                    OnClick="imgSubmit_Click" /></div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="divSecondary" runat="server" visible="false">
                <table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td align="center">
                            <asp:Literal ID="litMessage" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:LinkButton ID="lnkProceed" runat="server" Text="<%$Resources:Text.Proceed%>"
                                PostBackUrl="~/Mobile/Default.aspx"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <!-- Google Code for Contact Conversion Page -->
                <script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 976798983;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "U22sCMGa2QQQh4rj0QM"; var google_conversion_value = 0;
/* ]]> */
                </script>
                <script type="text/javascript" src="http://www.googleadservices.com/pagead/conversion.js">
                </script>
                <noscript>
                    <div style="display: inline;">
                        <img height="1" width="1" style="border-style: none;" alt="" src="http://www.googleadservices.com/pagead/conversion/976798983/?value=0&am
p;label=U22sCMGa2QQQh4rj0QM&amp;guid=ON&amp;script=0" />
                    </div>
                </noscript>
            </div>
        </div>
    </div>
</asp:Content>
