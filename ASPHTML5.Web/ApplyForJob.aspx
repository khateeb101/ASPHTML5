<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplyForJob.aspx.cs" Inherits="ASPHTML5.Web.ApplyForJob"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Contact Us" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = ""</script>
    <script>        id2 = "job_openings"</script>
    <div class="font14px">
        <div style="text-transform: uppercase;">
            <asp:Literal ID="litTitle" runat="server" /></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="14" /></div>
        <asp:Literal ID="litDescription" runat="server" /></div>
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
                            <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tr>
                                    <td valign="top" colspan="3">
                                        <div class="font12px white_text fontbold">
                                            <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.AboutYourProperty%>" /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="90" valign="top" class="padding_txt_rad">
                                        <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Text.MoreDetails%>" />&nbsp;&nbsp;<asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPropertyDetails"
                                            ErrorMessage="*"></asp:RequiredFieldValidator>
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td>
                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
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
                                    <td width="90" valign="top" class="padding_txt_rad">
                                        <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.CV%>" />
                                    </td>
                                    <td width="5">
                                    </td>
                                    <td valign="top">
                                        <table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <%--<td>
                                                            <img id="Img10" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server" alt="" />
                                                        </td>--%>
                                                <td>
                                                    <%-- class="input_bg"--%>
                                                    <asp:FileUpload ID="resumeUpload" runat="server" CssClass="box" Style="background: none;
                                                        height: auto" />
                                                </td>
                                                <%--<td>
                                                            <img id="Img11" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server" alt="" />
                                                        </td>--%>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" colspan="3">
                                        <div class="font12px white_text fontbold">
                                            <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Text.YourDetails%>" /></div>
                                        <div>
                                            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="90" valign="top" class="padding_txt_rad">
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
                                                    <input type="text" class="box" style="width: 90px" id="txtFirstName" runat="server" />
                                                </td>
                                                <td>
                                                    <img id="Img3" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                        alt="" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
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
                                                    <img id="Img4" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                        alt="" />
                                                </td>
                                                <td class="input_bg">
                                                    <input type="text" class="box" style="width: 90px" id="txtLastName" runat="server" />
                                                </td>
                                                <td>
                                                    <img id="Img5" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                        alt="" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="90" valign="top" class="padding_txt_rad">
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
                                                    <input type="text" class="box" style="width: 90px" id="txtPhone" runat="server" />
                                                </td>
                                                <td>
                                                    <img id="Img7" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                        alt="" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="90" valign="top" class="padding_txt_rad">
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
                                                    <input type="text" class="box" style="width: 90px" id="txtEmail" runat="server" />
                                                </td>
                                                <td>
                                                    <img id="Img9" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                        alt="" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
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
                                                    <img id="Img10" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                        alt="" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
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
                                PostBackUrl="~/JobOpportunity.aspx"></asp:LinkButton>
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