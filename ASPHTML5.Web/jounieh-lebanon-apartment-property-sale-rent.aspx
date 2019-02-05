<%@ Page Title="apartments Jounieh |  real estate in Jounieh  lebanon | Jounieh Lebanon properties |  Sodeco Gestion" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="jounieh-lebanon-apartment-property-sale-rent.aspx.cs" Inherits="ASPHTML5.Web.jounieh_lebanon_apartment_property_sale_rent" %>
<%@ Register src="~/UserControls/UCPropertySearch.ascx" tagname="UC_PropertySearch" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCRightHtml.ascx" tagname="UC_RightHtml" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCMap.ascx" tagname="UCMap" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
<script>    id = ""</script>
<script>    id2 = ""</script>
<style type="text/css">
a
{
    color:#637374; 
    text-decoration:underline;
}
a:hover
{
    color:#004F7F; 
}
.tabs_div_hidden2
{
    padding-left:10px !important;
}
#cpHead_UC_PropertySearch1_tdDiff
{
    width:0px !important;
}
</style>
<div style="text-align:justify;">
<h1 style="padding:0px; margin:0px; line-height:1.2em">
Search for apartments you wish to buy or rent in Jounieh lebanon, post the property you intend to sell or rent using our website
</h1>
<br /><br />
<span style="font-size:14px; line-height:1.5em">
We can guide you through the process of finding a suitable <a href="/SearchResults.aspx?qadaa=keserouane&where=jounieh">property in Jounieh</a> and managing it if you request. In the Jounieh area, you are offered a combination of a traditional house with the privilege of being five minutes away from the beach. Don’t forget that we undertake recent evaluations for your property pricing and provide you with the best consultancy service.
</span>
</div>
<div style="margin-top:50px; margin-bottom:50px;">
<uc1:UC_PropertySearch ID="UC_PropertySearch1" runat="server" />
</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpUpperRightPanel" runat="server">
 <div class="pad_col_right">
        <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
    </div>
</asp:Content>

