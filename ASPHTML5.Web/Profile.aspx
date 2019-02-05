<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ASPHTML5.Web.Profile"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Profile" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = "profile"</script>
    <script>        id2 = ""</script>
    <div class="font14px">
        <div style="text-transform: uppercase;">
            <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.HeaderTitle%>" /></div>
    </div>
     <meta id="Meta1" name='description' runat="server" content='<%$ Resources:Meta.Desc %>' />
     <meta id="Meta2" name='keywords' runat="server" content='<%$ Resources:Meta.Keywords %>' />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
    <div class="font14px middle_padd">
        <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.HeaderContent%>" /></div>
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
    <div class="font14px added_section2 middle_padd" style="margin-top: 0px; position: relative">
        <asp:HyperLink NavigateUrl="~/AboutUs.aspx" Text="<%$Resources:Text.AboutLink%>"
            runat="server" /></div>
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
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