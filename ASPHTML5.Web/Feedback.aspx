<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="ASPHTML5.Web.Feedback"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Feedback" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>
    <%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = "feedback_form"</script>
    <script>        id2 = ""</script>
    <meta id="Meta1" name='description' runat="server" content='<%$ Resources:Meta.Desc %>' />
    <meta id="Meta2" name='keywords' runat="server" content='<%$ Resources:Meta.Keywords %>' />
    <div class="font14px">
        <div style="text-transform: uppercase;">
            <asp:Literal ID="litFormTitle" runat="server" /></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="14" /></div>
        <div>
            <asp:Literal ID="litFromContent1" runat="server" /></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="34" /></div>
        <div>
            <asp:Literal ID="litFormContent2" runat="server" />
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
                                                                <img src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server" alt="" />
                                                            </td>
                                                            <td class="input_bg">
                                                                <input type="text" class="box" style="width: 90px" id="txtFirstName" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
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
                                                                <img src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server" alt="" />
                                                            </td>
                                                            <td class="input_bg">
                                                                <input type="text" class="box" style="width: 90px" id="txtLastName" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
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
                                                                <img src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server" alt="" />
                                                            </td>
                                                            <td class="input_bg">
                                                                <input type="text" class="box" style="width: 90px" id="txtPhone" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
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
                                                                <img src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server" alt="" />
                                                            </td>
                                                            <td class="input_bg">
                                                                <input type="text" class="box" style="width: 90px" id="txtEmail" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
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
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="*" ControlToValidate="CaptchaCodeTextBox"
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
                        <td width="19">
                        </td>
                    </tr>
                </table>
            </div>
            <%--<div id="divSecondary" runat="server" visible="false">
      <table width="100%" cellspacing="0" cellpadding="0">
      <tr><td align="center">
          <asp:Literal ID="litMessage" runat="server"></asp:Literal></td>
      </tr>
      <tr><td align="center">
          <asp:LinkButton ID="lnkProceed" runat="server" Text="<%$Resources:Text.Proceed%>" PostBackUrl="~/Index.aspx"></asp:LinkButton>
      </td></tr>
      </table>
      <!-- Google Code for Contact Conversion Page --> <script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 976798983;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "U22sCMGa2QQQh4rj0QM"; var google_conversion_value = 0;
/* ]]> */
</script>
<script type="text/javascript"  
src="http://www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt=""  
src="http://www.googleadservices.com/pagead/conversion/976798983/?value=0&am
p;label=U22sCMGa2QQQh4rj0QM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>
      </div>--%>
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
