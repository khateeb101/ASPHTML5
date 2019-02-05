<%@ Page Title="apartment for sale in Tripoli Lebanon | cheap apartment Tripoli Haddadin | rent house in Tripoli | Tripoli Lebanon real estate | Sodeco Gestion" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="tripoli-buy-rent-sell-apartment-lebanon.aspx.cs" Inherits="ASPHTML5.Web.tripoli_buy_rent_sell_apartment_lebanon" %>
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
Find the right apartment or property for sale or rent in Tripoli with Sodeco Gestion
</h1>
<br /><br />
<span style="font-size:14px; line-height:1.5em">
In Tripoli, Lebanon’s second biggest city, you can benefit from affordable houses, rentals and lands with Sodeco gestion’s real estate reliable services. In Tripoli, you can profit from living in a traditional city where the Phoenician and the Ottoman civilization are still present and intact through cultural monuments. You can find many <a href="/SearchResults.aspx?for=sale&qadaa=tripoli&type=apartment">apartments for sale in Tripoli</a> through our search engine and you can rest assured that Sodeco Gestion will always give you a tailored advice and customized buying oppotunities.
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
