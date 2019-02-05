<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="ASPHTML5.Web.AdminIndex"  MasterPageFile="~/Administration/Administration.Master"%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">

    <script>    id = ""</script>
<script>    id2 = ""</script>
<div class="font14px">Administrator Panel</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <div class="font14px middle_padd">
<table width="100%" cellpadding="0" cellspacing="0" >
<tr>
<td align="center"><a href="JobOpportunityCandidateManagement.aspx">Applied Candidates CVs</a></td>
</tr>
<tr>
<td align="center"><a href="JobOpportunityManagement.aspx">Job Opportunity Management</a></td>
</tr>
<tr>
<td align="center"><a href="NewsletterManagement.aspx">Newsletter Management</a></td>
</tr>
<tr>
<td align="center"><a href="Newsletters.aspx">Newsletters</a></td>
</tr>
</table>
</div>
</asp:Content>