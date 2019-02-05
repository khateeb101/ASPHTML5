﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TermsAndConditions.aspx.cs" Inherits="ASPHTML5.Web.TermsAndConditions" MasterPageFile="~/Common.Master" Title="Sodeco Gestion" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<%@ Register src="~/UserControls/UCRightHtml.ascx" tagname="UC_RightHtml" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<script>id = ""</script>
<script>    id2 = "terms_conditions"</script>
<div class="font14px"><div style="text-transform: uppercase;"><asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Text.HeaderTitle%>" /></div></div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
<div class="font14px middle_padd"><asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.HeaderContent%>" /></div>
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