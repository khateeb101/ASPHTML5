<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Administration.Master" AutoEventWireup="true" CodeBehind="Newsletter-edit.aspx.cs" Inherits="ASPHTML5.Web.Newsletter_edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
<script>    id = "Newsletters"</script>
<script>    id2 = ""</script>
<div class="font14px">Newsletters</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>Title</td>
<td>
<asp:TextBox ID="txtTitle" runat="server" CssClass="boxadmin" ValidationGroup="newsletter"></asp:TextBox>
</td>
</tr>
<tr>
<td>
 &nbsp;&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>Title_fr</td>
<td>
<asp:TextBox ID="txtTitleFr" runat="server" CssClass="boxadmin" ValidationGroup="newsletter"></asp:TextBox>
</td>
</tr>
<tr>
<td>
 &nbsp;&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>Title_ar</td>
<td>
<asp:TextBox ID="txtTitleAr" runat="server" CssClass="boxadmin" ValidationGroup="newsletter"></asp:TextBox>
</td>
</tr>
<tr>
<td>
 &nbsp;&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>
Image
</td>
<td>
<asp:FileUpload runat="server" ID="uplImage" />
</td>
<td>
    <asp:Label Text="" ID="lblUploadImage" runat="server" />
</td>
</tr>
<tr>
<td>
 &nbsp;&nbsp;</td>
<td>
&nbsp;</td>
</tr>
<tr>
<td>
PDF
</td>
<td>
<asp:FileUpload runat="server" ID="uplPDF" />
</td>
<td>
    <asp:Label Text="" ID="lblUploadPDF" runat="server" />
</td>
</tr>
<tr>
        <td>
            &nbsp;&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
<tr>
<td>
Show on website
</td>
<td>
    <asp:CheckBox Text="" ID="chkShow" runat="server" />
</td>
</tr>
<tr>
<td colspan="2" align="right">
   <asp:Button ID="btnSave" runat="server" Text="Save" ValidationGroup="newsletter" 
        onclick="btnSave_Click"/>
</td>
</tr>
</table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpBottomPanel" runat="server">
</asp:Content>
