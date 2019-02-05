<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="ASPHTML5.Web.Mobile.Contact" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="width:100%; border:0; background-color:White;">
<div style="width:98%; margin:0 auto; border:2px solid white; text-align:center; ">
    <div class="font14px" style="background-color:#055180;">
        <div>
            <asp:Image ID="Image1" ImageUrl="~/images/spacer.gif" Width="1px" Height="34px" runat="server"
                meta:resourcekey="Image1Resource1" /></div>
        <div>
            <asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:Text.Content2 %>" /></div>
        <div>
            <asp:Image ID="Image2" ImageUrl="~/images/spacer.gif" Width="1px" Height="34px" runat="server"
                meta:resourcekey="Image1Resource1" /></div>
        <div style="width: 100%; background-color: White;">
            <div>
                <asp:Image ID="Image3" ImageUrl="~/images/spacer.gif" Width="1px" Height="10px" runat="server"
                    meta:resourcekey="Image1Resource1" /></div>
            <table style="background-color: White;" align="center" border="0" cellspacing="0"
                cellpadding="0">
                <tr>
                    <td>
                        <a href="http://www.twitter.com/ASPHTML5" target="_blank">
                            <img src="../images/twitter.gif" alt="Twitter" title="Twitter" border="0" /></a>
                    </td>
                    <td width="7">
                    </td>
                    <td>
                        <a href="http://www.facebook.com/pages/Sodeco-Gestion-sal/113548598696406" target="_blank">
                            <img src="../images/facebook.gif" alt="Facebook" title="Facebook" border="0" /></a>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" height="6">
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <img src="../images/folowuson.gif" alt="" title="" border="0" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </div>
</div>
</asp:Content>
