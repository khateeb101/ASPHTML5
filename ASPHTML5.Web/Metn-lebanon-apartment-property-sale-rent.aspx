<%@ Page Title="apartments for sale in Metn | buy house in baabdat Metn | rent  apartment in jdeideh Metn | buy land Metn Lebanon | villa in Broumana" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="Metn-lebanon-apartment-property-sale-rent.aspx.cs" Inherits="ASPHTML5.Web.Metn_lebanon_apartment_property_sale_rent" %>
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
#cpHead_ctl00_tdDiff
{
    width:0px !important;
}
</style>
<div style="text-align:justify;">
<h1 style="padding:0px; margin:0px; line-height:1.2em">
Buy, sell or rent any property wether it is an apartment, house, villa or land in Metn including Fanar, Bikfaya, Elyssar, and other areas in Metn lebanon 
</h1>
<br /><br />
<span style="font-size:14px; line-height:1.5em">
Sodeco Gestion can help you choose among thousands of <a href="/SearchResults.aspx?qadaa=metn">properties and lands in the Metn</a> area in Lebanon, as well as negotiating the best possible deal . In Metn, we can provide you with a vast choice of luxurious home like houses and villas in <a href="SearchResults.aspx?qadaa=metn&where=Beit Mery">Beit Mery</a>, <a href="SearchResults.aspx?qadaa=metn&where=Mazraat Yachouh">Mazaraat Yachouh</a> and <a href="SearchResults.aspx?qadaa=metn&where=Beit Chaar">Beit Chaar</a>, apartments and <a href="SearchResults.aspx?type=office&qadaa=metn&where=Antelias&where2=Rabieh">offices in Antelias and Rabieh for rent and sale</a>, with a beautiful view at an affordable price.
</span>
</div>
<div style="margin-top:50px; margin-bottom:50px;">
<uc1:UC_PropertySearch runat="server" />
</div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cpUpperRightPanel" runat="server">
 <div class="pad_col_right">
        <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
    </div>
</asp:Content>
