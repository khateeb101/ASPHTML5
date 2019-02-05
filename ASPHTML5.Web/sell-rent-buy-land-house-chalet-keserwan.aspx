<%@ Page Title="Land for sale in Keserwan | chalet for rent in Lebanon | apartments for sale in jbeil keserwan | houses Keserwan lebanon | studio in Kaslik | Sodeco Gestion " Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="sell-rent-buy-land-house-chalet-keserwan.aspx.cs" Inherits="ASPHTML5.Web.sell_rent_buy_land_house_chalet_keserwan" %>
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
With Sodeco Gestion, the leading real estate comapny in lebanon you can buy, sell, rent an apartment in Keserwan
</h1>
<br /><br />
<span style="font-size:14px; line-height:1.5em">
Find the best houses, apartments and <a href="/SearchResults.aspx?type=office&qadaa=Keserouane">offices in Keserwan</a> or <a href="SearchResults.aspx?type=chalet&qadaa=Keserouane&where=Faraya / Ouyoun El Siman&where2=Faraya/ Ouyoun El Simane">chalets in Faraya</a> with Sodeco gestion’s property brokerage service. In Keserwan, you can find new and old apartments with an exceptional view of the sea side and benefit from spacious residences for an affordable price and a peaceful environment within areas like Kfour, Kleiat, <a href="SearchResults.aspx?qadaa=Keserouane&where=kaslik">Kaslik</a>, Adma and <a href="SearchResults.aspx?qadaa=Keserouane&where=Faraya / Ouyoun El Siman&where2=Faraya/ Ouyoun El Simane">Faraya</a>.
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
