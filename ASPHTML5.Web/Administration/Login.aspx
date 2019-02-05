<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPHTML5.Web.Login"  MasterPageFile="~/Administration/Administration.Master"%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<script>    id = ""</script>
<script>    id2 = ""</script>
<div class="font14px">Administrator Login</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
<div class="font14px middle_padd">
<table width="100%" cellpadding="0" cellspacing="0">
<tr>
    <td style="width:25%">
        <asp:Label ID="lblUsername" runat="server" Font-Bold="True">Username</asp:Label>
        &nbsp;<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
            ControlToValidate="txtUsername" ErrorMessage="*" Font-Bold="true" 
            ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
    </td>
    <td style="width:75%">
        <asp:TextBox ID="txtUsername" runat="server" CssClass="box"></asp:TextBox>
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
    <td align="center" colspan="2" style="color:Red;">
        <asp:Literal ID="txtFailureText" runat="server" EnableViewState="False"></asp:Literal>
    </td>
</tr>
<tr>
    <td align="right" colspan="2">
        <asp:Button ID="btnLogin" runat="server" CommandName="Login" 
            CssClass="button" Text="Log In" ValidationGroup="Login1" 
            onclick="LoginButton_Click" />
    </td>
</tr>
</table>
</div>
</asp:Content>