<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="property-view.aspx.cs"
    Inherits="ASPHTML5.Web.property_view" %>
    <%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/includes/styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    body iframe
    {
        height:1px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="blue_bg_div">
            <div>
                <img src="/images/spacer.gif" alt="" width="1" height="23" /></div>
            <div id="divMain" runat="server">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="19">
                        </td>
                        <td valign="top" height="390">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tr>
                                    <td valign="top">
                                        <div class="font12px white_text fontbold">
                                            <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.YourComments%>" /></div>
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="90" valign="top" class="padding_txt_rad">
                                                    <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.Comments%>" />
                                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPropertyDetails"
                                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </td>
                                                <td width="5">
                                                </td>
                                                <td valign="top">
                                                    <div>
                                                        <img src="/images/textarea_top.gif" alt="" /></div>
                                                    <div>
                                                        <textarea class="textarea_style" id="txtPropertyDetails" runat="server"></textarea></div>
                                                    <div>
                                                        <img src="/images/textarea_bottom.gif" alt="" /></div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <div class="font12px white_text fontbold">
                                            <asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Text.YourDetails%>" /></div>
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="90" valign="top" class="padding_txt_rad">
                                                    <asp:Literal ID="Literal6" runat="server" Text="<%$Resources:Text.Title%>" />
                                                </td>
                                                <td width="5">
                                                </td>
                                                <td valign="top">
                                                    <select class="select" style="width: 60px;" id="ddlTitle" runat="server">
                                                        <option value="<%$Resources:Text.TitleMr%>" title="Mr"></option>
                                                        <option value="<%$Resources:Text.TitleMrs%>" title="Mrs"></option>
                                                        <option value="<%$Resources:Text.TitleMiss%>" title="Miss"></option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="90" valign="top" class="padding_txt_rad">
                                                    <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:Text.FirstName%>" />
                                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstName"
                                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </td>
                                                <td width="5">
                                                </td>
                                                <td valign="top">
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <img id="Img1" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                    alt="" />
                                                            </td>
                                                            <td class="input_bg">
                                                                <input type="text" class="box" style="width: 90px" id="txtFirstName" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img id="Img2" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                                    alt="" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="90" valign="top" class="padding_txt_rad">
                                                    <asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Text.Surname%>" />
                                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName"
                                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </td>
                                                <td width="5">
                                                </td>
                                                <td valign="top">
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <img id="Img3" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                    alt="" />
                                                            </td>
                                                            <td class="input_bg">
                                                                <input type="text" class="box" style="width: 90px" id="txtLastName" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img id="Img4" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                                    alt="" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="90" valign="top" class="padding_txt_rad">
                                                    <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Text.Phone%>" />
                                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone"
                                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                                </td>
                                                <td width="5">
                                                </td>
                                                <td valign="top">
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <img id="Img5" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                    alt="" />
                                                            </td>
                                                            <td class="input_bg">
                                                                <input type="text" class="box" style="width: 90px" id="txtPhone" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img id="Img6" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                                    alt="" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>                                       
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="90" valign="top" class="padding_txt_rad">
                                                    <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Text.Email%>" />
                                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail"
                                                        ErrorMessage="*"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                                        Display="Dynamic" ErrorMessage="<%$Resources:Error.IncorrectEmail%>" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                </td>
                                                <td width="5">
                                                </td>
                                                <td valign="top">
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <img id="Img7" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                    alt="" />
                                                            </td>
                                                            <td class="input_bg">
                                                                <input type="text" class="box" style="width: 90px" id="txtEmail" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img id="Img8" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                                    alt="" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                         <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="23" /></div>
<%--                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="90" valign="top" class="padding_txt_rad" colspan="5">
                                                    <BotDetect:Captcha ID="SampleCaptcha" runat="server" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="*" ControlToValidate="CaptchaCodeTextBox"
                                                        Display="Dynamic" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <img id="Img9" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                    alt="" />
                                                            </td>
                                                            <td width="90" class="input_bg">
                                                                <asp:TextBox ID="CaptchaCodeTextBox" Style="width: 90px" CssClass="box" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img id="Img10" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                                    alt="" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>--%>
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="23" /></div>
                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="90" valign="top" class="padding_txt_rad">
                                                </td>
                                                <td width="5">
                                                </td>
                                                <td valign="top" align="right" width="105">
                                                    <div align="right">
                                                        <asp:ImageButton ID="imgSubmit" runat="server" ImageUrl="<%$Resources:Image.Submit%>"
                                                            OnClick="imgSubmit_Click" /></div>
                                                    <%-- OnClick="imgSubmit_Click"--%>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="19">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </form>
    <!-- Google Code for Viewing Conversion Page -->
    <script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 977480499;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "VSdOCMXp8QoQs9aM0gM"; var google_remarketing_only = false;
/* ]]> */
    </script>
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
    </script>
    <noscript>
        <div style="display: inline;">
            <img height="1" width="1" style="border-style: none;" alt="" src="//www.googleadservices.com/pagead/conversion/977480499/?label=VSdOCMXp8
QoQs9aM0gM&amp;guid=ON&amp;script=0" />
        </div>
    </noscript>
</body>
</html>
