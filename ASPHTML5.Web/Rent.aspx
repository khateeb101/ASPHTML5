<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rent.aspx.cs" Inherits="ASPHTML5.Web.Rent" MasterPageFile="~/Common.Master" Title="Real Estate to rent in Lebanon | Lebanese rentals | ASPHTML5" culture="auto" meta:resourcekey="PageResource1" uiculture="auto"%>
<%@ Register src="~/UserControls/UCPropertySearch.ascx" tagname="UC_PropertySearch" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCValuationRequest.ascx" tagname="UC_ValuationRequest" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCPropertiesListing.ascx" tagname="UC_PropertiesListing" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCRightHtml.ascx" tagname="UC_RightHtml" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCPropertyEvaluationRequest.ascx" tagname="UC_PropertyEvaluationRequest" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<script>id = "rent"</script>
<script>id2 = ""</script>
<div class="font14px"><asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.PropertiesForRent%>" /></div>
 <meta id="Meta1" name='description' runat="server" content='<%$ Resources:Meta.Desc %>' />
    <meta id="Meta2" name='keywords' runat="server" content='<%$ Resources:Meta.Keywords %>' />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
<uc1:UC_PropertiesListing ID="UC_PropertiesListing1" runat="server" />
<uc1:UC_PropertyEvaluationRequest ID="UC_PropertyEvaluationRequest1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpBottomPanel">
<div><img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
<uc1:UC_PropertySearch ID="UC_PropertySearch1" runat="server" />
<div><img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="cpMiddleRightPanel">
<uc1:UC_ValuationRequest ID="UC_ValuationRequest1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
<div class="pad_col_right">
    <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
      </div>
</asp:Content>