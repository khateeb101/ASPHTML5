<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackForm.aspx.cs" Inherits="ASPHTML5.Web.FeedbackForm"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Feedback" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>
    <%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = "feedback_form"</script>
    <script>        id2 = ""</script>
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
                                        <div>
                                            <table border="0" cellspacing="0" cellpadding="0" class="blue_text font10px">
                                                <tr>
                                                    <td align="center">
                                                    </td>
                                                    <td align="center">
                                                        1
                                                    </td>
                                                    <td align="center">
                                                        2
                                                    </td>
                                                    <td align="center">
                                                        3
                                                    </td>
                                                    <td align="center">
                                                        4
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.Q1%>"></asp:Literal>
                                                    </td>
                                                    <td colspan="4">
                                                        <asp:RadioButtonList ID="rbQ1" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="1" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="2" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="3" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="4" Selected="False" Text=""></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:Text.Q2%>"></asp:Literal>
                                                    </td>
                                                    <td colspan="4">
                                                        <asp:RadioButtonList ID="rbQ2" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="1" Text="" Selected="False"></asp:ListItem>
                                                            <asp:ListItem Value="2" Text="" Selected="False"></asp:ListItem>
                                                            <asp:ListItem Value="3" Text="" Selected="False"></asp:ListItem>
                                                            <asp:ListItem Value="4" Text="" Selected="False"></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Literal ID="Literal9" runat="server" Text="<%$Resources:Text.Q3%>"></asp:Literal>
                                                    </td>
                                                    <td colspan="4">
                                                        <asp:RadioButtonList ID="rbQ3" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="1" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="2" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="3" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="4" Selected="False" Text=""></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Literal ID="Literal12" runat="server" Text="<%$Resources:Text.Q4%>"></asp:Literal>
                                                    </td>
                                                    <td colspan="4">
                                                        <asp:RadioButtonList ID="rbQ4" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="1" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="2" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="3" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="4" Selected="False" Text=""></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Literal ID="Literal13" runat="server" Text="<%$Resources:Text.Q5%>"></asp:Literal>
                                                    </td>
                                                    <td colspan="4">
                                                        <asp:RadioButtonList ID="rbQ5" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="1" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="2" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="3" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="4" Selected="False" Text=""></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Literal ID="Literal14" runat="server" Text="<%$Resources:Text.Q6%>"></asp:Literal>
                                                    </td>
                                                    <td colspan="4">
                                                        <asp:RadioButtonList ID="rbQ6" runat="server" RepeatDirection="Horizontal">
                                                            <asp:ListItem Value="1" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="2" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="3" Selected="False" Text=""></asp:ListItem>
                                                            <asp:ListItem Value="4" Selected="False" Text=""></asp:ListItem>
                                                        </asp:RadioButtonList>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6" class="white_text">
                                                        <asp:Literal ID="Literal15" runat="server" Text="<%$Resources:Text.Ranking%>" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5">
                                                        &nbsp;&nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div>
                                            <table cellpadding="0" cellspacing="0" border="0" width="100%">
                                                <tr>
                                                    <td valign="top">
                                                        <div class="font12px white_text fontbold">
                                                            <asp:Literal ID="Literal16" runat="server" Text="<%$Resources:Text.OpenQuestions%>" /></div>
                                                        <div>
                                                            <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
                                                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td width="90" valign="top" class="padding_txt_rad">
                                                                    <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.OpenQ1%>" />
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td valign="top">
                                                                    <div>
                                                                        <img src="/images/textarea_top.gif" alt="" /></div>
                                                                    <div>
                                                                        <textarea class="textarea_style" id="txtOpenQ1" runat="server"></textarea></div>
                                                                    <div>
                                                                        <img src="/images/textarea_bottom.gif" alt="" /></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="90" valign="top" class="padding_txt_rad">
                                                                    &nbsp;&nbsp;
                                                                </td>
                                                                <td width="5">
                                                                    &nbsp;
                                                                </td>
                                                                <td valign="top">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="90" valign="top" class="padding_txt_rad">
                                                                    <asp:Literal ID="Literal17" runat="server" Text="<%$Resources:Text.OpenQ2%>" />
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td valign="top">
                                                                    <asp:RadioButtonList ID="rbOpenQ2" runat="server" RepeatDirection="Horizontal">
                                                                        <asp:ListItem Selected="False" Value="Yes" Text="<%$Resources:Text.Yes%>"></asp:ListItem>
                                                                        <asp:ListItem Selected="False" Value="No" Text="<%$Resources:Text.No%>"></asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="90" valign="top" class="padding_txt_rad">
                                                                    &nbsp;&nbsp;
                                                                </td>
                                                                <td width="5">
                                                                    &nbsp;
                                                                </td>
                                                                <td valign="top">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="90" valign="top" class="padding_txt_rad">
                                                                    <asp:Literal ID="Literal18" runat="server" Text="<%$Resources:Text.OpenQ3%>" />
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td valign="top">
                                                                    <asp:RadioButtonList ID="rbOpenQ3" runat="server" RepeatDirection="Horizontal">
                                                                        <asp:ListItem Selected="False" Value="Yes" Text="<%$Resources:Text.Yes%>"></</asp:ListItem>
                                                                        <asp:ListItem Selected="False" Value="No" Text="<%$Resources:Text.No%>"></</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="90" valign="top" class="padding_txt_rad">
                                                                    &nbsp;&nbsp;
                                                                </td>
                                                                <td width="5">
                                                                    &nbsp;
                                                                </td>
                                                                <td valign="top">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td width="90" valign="top" class="padding_txt_rad">
                                                                    <asp:Literal ID="Literal19" runat="server" Text="<%$Resources:Text.OpenQ4%>" />
                                                                </td>
                                                                <td width="5">
                                                                </td>
                                                                <td valign="top">
                                                                    <div>
                                                                        <img src="/images/textarea_top.gif" alt="" /></div>
                                                                    <div>
                                                                        <textarea class="textarea_style" id="txtOpenQ4" runat="server"></textarea></div>
                                                                    <div>
                                                                        <img src="/images/textarea_bottom.gif" alt="" /></div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td>
                                                    </td>
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
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
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
                                                                <img  src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                                    alt="" />
                                                            </td>
                                                            <td width="90" class="input_bg">
                                                                <asp:TextBox ID="CaptchaCodeTextBox" Style="width: 90px" CssClass="box" runat="server" />
                                                            </td>
                                                            <td>
                                                                <img  src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                                    alt="" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
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
