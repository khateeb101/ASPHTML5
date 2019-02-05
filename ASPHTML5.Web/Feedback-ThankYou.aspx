<%@ Page Title="" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="Feedback-ThankYou.aspx.cs" Inherits="ASPHTML5.Web.Feedback_ThankYou" %>
<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = "feedback_form"</script>
    <script>        id2 = ""</script>

<div class="font14px"><div style="text-transform: uppercase;"><asp:Literal ID="litFormTitle" Text="<%$Resources:Text.FormTitleView%>" runat="server"  /></div>
<div>
                            <img src="/images/spacer.gif" alt="" width="1" height="14" /></div>
                        <div>
                            <asp:Literal ID="litFromContent1" runat="server" /></div>
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="34" /></div>
                        <div><asp:Literal ID="litFormContent2" runat="server" />
                            </div>
                            <script>
                                (function (i, s, o, g, r, a, m) {
                                    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                                        (i[r].q = i[r].q || []).push(arguments)
                                    }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
                                })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

                                ga('create', 'UA-32778066-1', 'auto');
                                ga('send', 'pageview');

</script>

</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <div class="contact_form_padd">
        <div class="blue_bg_div">
            <div>
                <img src="/images/spacer.gif" alt="" width="1" height="23" /></div>                
      <div id="divSecondary" runat="server">
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
      </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
    <div class="pad_col_right">
        <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
    </div>
</asp:Content>
