<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ASPHTML5.Web.ChangePassword"  MasterPageFile="~/Administration/Administration.Master"%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<script>    id = "changePassword"</script>
<script>    id2 = ""</script>
<div class="font14px">Administrator Login</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
<div class="font14px middle_padd">
<table width="100%" cellpadding="0" cellspacing="0">
<tr>
    <td style="width:25%">
        <asp:Label ID="lblUsername" runat="server" Font-Bold="True">Username</asp:Label>
    </td>
    <td style="width:75%">
        <asp:TextBox ID="txtUsername" runat="server" CssClass="box" Enabled="false" ReadOnly="true"></asp:TextBox>
    </td>
</tr>
<tr>
    <td style="width:25%">
        <asp:Label ID="lblPassword" runat="server" Font-Bold="true">Password</asp:Label>
        &nbsp;<asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
            ControlToValidate="txtPassword" ErrorMessage="*" Font-Bold="true" 
            ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
    </td>
    <td>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="box" TextMode="Password"></asp:TextBox>
    </td>
</tr>
<tr>
    <td align="right" colspan="2">
        <asp:Button ID="btnChangePassword" runat="server" CommandName="ChangePassword" 
            CssClass="button" Text="Change Password" ValidationGroup="Login1" 
            onclick="btnChangePassword_Click" />
    </td>
</tr>
</table>
</div>
</asp:Content>