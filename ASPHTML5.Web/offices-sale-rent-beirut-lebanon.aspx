<%@ Page Title="Offices Lebanon | offices for sale in Beirut Lebanon | buy or rent office in Lebanon | Sodeco Gestion" Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="offices-sale-rent-beirut-lebanon.aspx.cs" Inherits="ASPHTML5.Web.offices_sale_rent_beirut_lebanon" %>
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
Sodeco Gestion offers you a wide range of offices for sale or rent in Lebanon
</h1>
<br /><br />
<span style="font-size:14px; line-height:1.5em">
With Sodeco Gestion , you can find <a href="/SearchResults.aspx?type=office&qadaa=_beirut_">offices in Beirut</a>, Metn and Keserwan and other regions,all in good condition.The offices are suitable for businesses and include first-class maintanance.Locations are easily accessible and parking spots are available.
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
