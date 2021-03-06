﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EvaluationRequest.aspx.cs"
    Inherits="ASPHTML5.Web.EvaluationRequest" MasterPageFile="~/Common.Master"
    Title="Sodeco Gestion | Contact Us" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = ""</script>
    <script>        id2 = ""</script>
    <div class="font14px">
        <div style="text-transform: uppercase;">
            <asp:Literal ID="litFormHeader" runat="server" /></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="14" /></div>
        <div>
            <asp:Literal ID="litContent1" runat="server" /></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="34" /></div>
        <div>
            <asp:Literal ID="litContent2" runat="server" /></div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <div class="contact_form_padd">
        <div class="blue_bg_div">
            <div>
                <img src="/images/spacer.gif" alt="" width="1" height="23" /></div>
            <div id="divMain" runat="server">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="19">
                        </td>
                        <td valign="top">
                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tr>
                                    <td valign="top">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td valign="top">
                                                    <div class="font12px white_text fontbold">
                                                        <asp:Literal ID="ltrAboutYourProperty" runat="server" />
                                                    </div>
                                                    <div>
                                                        <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
                                                    <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="90" valign="top" class="padding_txt_rad">
                                                                <asp:Literal ID="litValueFor" runat="server" Text="<%$Resources:Text.ValueFor%>" />
                                                            </td>
                                                            <td width="5">
                                                            </td>
                                                            <td valign="top">
                                                                <table border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td class="padding_radio">
                                                                            <input class="radiobutton" type="radio" id="rbBuy" name="group1" value="2" runat="server" />
                                                                        </td>
                                                                        <td width="2">
                                                                        </td>
                                                                        <td>
                                                                            <asp:Literal ID="litBuy" runat="server" Text="<%$Resources:Text.Buy%>" />
                                                                        </td>
                                                                        <td width="9">
                                                                        </td>
                                                                        <td class="padding_radio">
                                                                            <input class="radiobutton" type="radio" id="rbRent" name="group1" value="2" runat="server" />
                                                                        </td>
                                                                        <td width="2">
                                                                        </td>
                                                                        <td>
                                                                            <asp:Literal ID="litRent" runat="server" Text="<%$Resources:Text.Rent%>" />
                                                                        </td>
                                                                        <td width="9">
                                                                        </td>
                                                                        <td class="padding_radio">
                                                                            <input class="radiobutton" type="radio" id="rbSell" name="group1" value="2" runat="server" />
                                                                        </td>
                                                                        <td width="2">
                                                                        </td>
                                                                        <td>
                                                                            <asp:Literal ID="litSell" runat="server" Text="<%$Resources:Text.Sell%>" />
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
                                                                <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:Text.Address%>" />&nbsp;
                                                            </td>
                                                            <td width="5">
                                                            </td>
                                                            <td valign="top">
                                                                <table border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td valign="top">
                                                                            <div>
                                                                                <img src="/images/textarea_top.gif" alt="" /></div>
                                                                            <div>
                                                                                <textarea class="textarea_style" id="txtAddress1" runat="server"></textarea></div>
                                                                            <div>
                                                                                <img src="/images/textarea_bottom.gif" alt="" /></div>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                                    <%--<table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="90" valign="top" class="padding_txt_rad">
                                                            </td>
                                                            <td width="5">
                                                            </td>
                                                            <td valign="top">
                                                                <table border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td>
                                                                            <img id="Img12" src="<%$Resources:Image.input_left%>" runat="server" alt="" />
                                                                        </td>
                                                                        <td class="input_bg">
                                                                            <input type="text" class="box" id="txtAddress2" runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <img id="Img13" src="<%$Resources:Image.input_right%>" runat="server" alt="" />
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
                                                                <asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Text.City%>" />&nbsp;<asp:RequiredFieldValidator
                                                                    ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                            <td width="5">
                                                            </td>
                                                            <td valign="top">
                                                                <table border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td>
                                                                            <img id="Img14" src="<%$Resources:Image.input_left%>" runat="server" alt="" />
                                                                        </td>
                                                                        <td class="input_bg">
                                                                            <input type="text" class="box" id="txtCity" runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <img id="Img15" src="<%$Resources:Image.input_right%>" runat="server" alt="" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>--%>
                                                    <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="90" valign="top" class="padding_txt_rad">
                                                                <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Text.MoreDetails%>" />&nbsp;<asp:RequiredFieldValidator
                                                                    ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPropertyDetails"
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
                                                    <br />
                                                    <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="90" valign="top" colspan="3" class="padding_txt_rad">
                                                                <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.Upload%>" />&nbsp;&nbsp;
                                                                <br />
                                                                <br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top" colspan="3">
                                                                <div>
                                                                    <asp:FileUpload runat="server" ID="fileUploader" /></div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                    </td>
                                    <td valign="top">
                                        <table width="100%" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td valign="top">
                                                    <div class="font12px white_text fontbold">
                                                        <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Text.YourDetails%>" /></div>
                                                    <div>
                                                        <img src="/images/spacer.gif" alt="" width="1" height="45" /></div>
                                                    <%-- <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="90" valign="top" class="padding_txt_rad">
                                                                <asp:Literal ID="Literal12" runat="server" Text="<%$Resources:Text.Title%>" />
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
                                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>--%>
                                                    <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="85" valign="top" class="padding_txt_rad">
                                                                <asp:Literal ID="Literal13" runat="server" Text="<%$Resources:Text.FirstName%>" />
                                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtFirstName"
                                                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                            <td width="5">
                                                            </td>
                                                            <td valign="top">
                                                                <table border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td>
                                                                            <img id="Img2" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                                alt="" />
                                                                        </td>
                                                                        <td class="input_bg">
                                                                            <input type="text" class="box" style="width: 95px" id="txtFirstName" runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <img id="Img3" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                                                alt="" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                                    <%--<table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="90" valign="top" class="padding_txt_rad">
                                                                <asp:Literal ID="Literal14" runat="server" Text="<%$Resources:Text.Surname%>" />
                                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtLastName"
                                                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                            <td width="5">
                                                            </td>
                                                            <td valign="top">
                                                                <table border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td>
                                                                            <img id="Img4" src="<%$Resources:Image.input_left%>" runat="server" alt="" />
                                                                        </td>
                                                                        <td class="input_bg">
                                                                            <input type="text" class="box" style="width: 90px" id="txtLastName" runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <img id="Img5" src="<%$Resources:Image.input_right%>" runat="server" alt="" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>--%>
                                                    <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="85" valign="top" class="padding_txt_rad">
                                                                <asp:Literal ID="Literal15" runat="server" Text="<%$Resources:Text.Phone%>" />
                                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPhone"
                                                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                                            </td>
                                                            <td width="5">
                                                            </td>
                                                            <td valign="top">
                                                                <table border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td>
                                                                            <img id="Img6" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                                alt="" />
                                                                        </td>
                                                                        <td class="input_bg">
                                                                            <input type="text" class="box" style="width: 95px" id="txtPhone" runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <img id="Img7" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
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
                                                            <td width="85" valign="top" class="padding_txt_rad">
                                                                <asp:Literal ID="Literal16" runat="server" Text="<%$Resources:Text.Email%>" />
                                                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail"
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
                                                                            <img id="Img8" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                                alt="" />
                                                                        </td>
                                                                        <td class="input_bg">
                                                                            <input type="text" class="box" style="width: 95px" id="txtEmail" runat="server" />
                                                                        </td>
                                                                        <td>
                                                                            <img id="Img9" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                                                alt="" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div>
                                                        <img src="/images/spacer.gif" alt="" width="1" height="23" /></div>
                                                    <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="90" valign="top" class="padding_txt_rad" colspan="5">
                                                                <BotDetect:Captcha ID="SampleCaptcha" runat="server" />
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="*" ControlToValidate="CaptchaCodeTextBox"
                                                                    Display="Dynamic" runat="server" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td>
                                                                            <img id="Img1" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                                alt="" />
                                                                        </td>
                                                                        <td width="90" class="input_bg">
                                                                            <asp:TextBox ID="CaptchaCodeTextBox" Style="width: 90px" CssClass="box" runat="server" />
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
                                                            </td>
                                                        </tr>
                                                    </table>
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
                                PostBackUrl="~/Index.aspx"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
    <div class="pad_col_right">
        <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
    </div>
</asp:Content>
<%--<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="cpMapPanel">
<div>
<img id="Img1" src="<%$Resources:Image.Map%>" runat="server" alt="" /></div>
</asp:Content>--%>