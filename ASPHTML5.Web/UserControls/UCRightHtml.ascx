<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCRightHtml.ascx.cs"
    Inherits="ASPHTML5.Web.UserControls.UCRightHtml" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <div id="fb-root">
    </div>
    <script>        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=216086008586333&version=v2.0";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));</script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#flip").click(function () {
                $("#panel").slideToggle("slow");
                $("#panel2").slideUp("slow");
                $("#panel3").slideUp("slow");
                $("#panel4").slideUp("slow");
            });
        });
        $(document).ready(function () {
            $("#flip2").click(function () {
                $("#panel2").slideToggle("slow");
                $("#panel").slideUp("slow");
                $("#panel3").slideUp("slow");
                $("#panel4").slideUp("slow");
            });
        });
        $(document).ready(function () {
            $("#flip3").click(function () {
                $("#panel3").slideToggle("slow");
                $("#panel2").slideUp("slow");
                $("#panel").slideUp("slow");
                $("#panel4").slideUp("slow");
            });
        });

        $(document).ready(function () {
            $("#flip4").click(function () {
                $("#panel4").slideToggle("slow");
                $("#panel2").slideUp("slow");
                $("#panel3").slideUp("slow");
                $("#panel").slideUp("slow");
            });
        });
    </script>
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="21" /></div>
    <table align="center" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <a href="http://www.youtube.com/ASPHTML5" target="_blank">
                    <img id="Img1" src="<%$ Resources:Image.youtube %>" width="41" height="39" runat="server"
                        alt="YouTube" title="YouTube" border="0" /></a>
            </td>
            <td width="7">
            </td>
            <td>
                <a href="http://twitter.com/sodecogestion" target="_blank">
                    <img id="Img2" src="<%$ Resources:Image.twitter %>" runat="server" alt="Twitter"
                        width="41" height="39" title="Twitter" border="0" /></a>
            </td>
            <td width="7">
            </td>
            <td>
                <%-- <a href="http://www.facebook.com/pages/Sodeco-Gestion-sal/113548598696406" target="_blank">
                    <img id="Img3" src="<%$ Resources:Image.facebook %>" runat="server" alt="Facebook"
                        title="Facebook" border="0" width="41" height="39" /></a>--%>
                <div class="fb-like" data-href="http://sodeco-gestion.com/en/index" data-width="41"
                    data-layout="button" data-action="like" data-show-faces="false" data-share="false">
                </div>
            </td>
            <td>
                <a href="http://instagram.com/sodecogestion" target="_blank">
                    <img id="Img4" style="margin-top: -5px; margin-left: 4px;" src="~/images/instagram-icon.png"
                        width="35" height="35" runat="server" alt="Instagram" title="Instagram" border="0" /></a>
            </td>
        </tr>
        <tr>
            <td colspan="5" height="6">
            </td>
        </tr>
        <tr>
            <td colspan="5" align="center">
                <a href="javascript:;">
                    <img id="Img5" src="<%$ Resources:Image.folowuson %>" width="89" height="13" runat="server"
                        alt="" title="" border="0" /></a>
            </td>
        </tr>
    </table>
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="16" /></div>
    <div class="font12px fontbold blue_text" id="flip" style="text-decoration: underline;
        cursor: pointer;">
        <asp:Literal ID="Literal6" runat="server" Text="<%$ Resources:Text.PopularSearches %>" /></div>
    <div id="panel" style="display: none;">
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="3" /></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=sale">
                <asp:Literal ID="Literal3" runat="server" Text="<%$ Resources:Text.LebanonProperty %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=sale&type=house&qadaa=_beirut_">
                <asp:Literal ID="Literal4" runat="server" Text="<%$ Resources:Text.HousesForSale %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=sale&type=office&qadaa=_beirut_">
                <asp:Literal ID="Literal5" runat="server" Text="<%$ Resources:Text.FlatsForSale %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=sale&type=apartment&qadaa=_beirut_">
                <asp:Literal ID="Literal7" runat="server" Text="<%$ Resources:Text.ApartmentsForSale %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=sale&type=commercial&qadaa=_beirut_">
                <asp:Literal ID="Literal8" runat="server" Text="<%$ Resources:Text.CommercialSpaceForSale %>" /></a></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
    </div>
    <div class="font12px fontbold blue_text" id="flip2" style="text-decoration: underline;
        cursor: pointer;">
        <asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:Text.PopularSearchesRenting %>" /></div>
    <div id="panel2" style="display: none;">
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="3" /></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=rent&type=house&qadaa=_beirut_">
                <asp:Literal ID="Literal9" runat="server" Text="<%$ Resources:Text.HousesForRent %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=rent&type=office&qadaa=_beirut_">
                <asp:Literal ID="Literal10" runat="server" Text="<%$ Resources:Text.FlatsForRent %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=rent&type=apartment&qadaa=_beirut_">
                <asp:Literal ID="Literal11" runat="server" Text="<%$ Resources:Text.ApartmentsForRent %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=rent&type=commercial&qadaa=_beirut_">
                <asp:Literal ID="Literal12" runat="server" Text="<%$ Resources:Text.CommercialSpacesForRent %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=short">
                <asp:Literal ID="Literal13" runat="server" Text="<%$ Resources:Text.ShortLets %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?for=long">
                <asp:Literal ID="Literal14" runat="server" Text="<%$ Resources:Text.LongLets %>" /></a></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
    </div>
    <div class="font12px fontbold blue_text" id="flip3" style="text-decoration: underline;
        cursor: pointer;">
        <asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:Text.ResourcesForBuyers %>" /></div>
    <div id="panel3" style="display: none;">
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="3" /></div>
        <div class="arrow_blue_div">
            <a href="/Index.aspx">
                <asp:Literal ID="Literal15" runat="server" Text="<%$ Resources:Text.SearchForProperty %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/SearchResults.aspx?New=true">
                <asp:Literal ID="Literal16" runat="server" Text="<%$ Resources:Text.NewHome %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/Services.aspx">
                <asp:Literal ID="Literal17" runat="server" Text="<%$ Resources:Text.Why %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/Mortages.aspx">
                <asp:Literal ID="Literal18" runat="server" Text="<%$ Resources:Text.Mortgages %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/Investments.aspx">
                <asp:Literal ID="Literal19" runat="server" Text="<%$ Resources:Text.Market %>" /></a></div>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
    </div>
    <div class="font12px fontbold blue_text" id="flip4" style="text-decoration: underline;
        cursor: pointer;">
        <asp:Literal ID="Literal20" runat="server" Text="<%$ Resources:Text.RegionalSearch %>" /></div>
    <div id="panel4" style="display: none;">
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="3" /></div>
        <div class="arrow_blue_div">
            <a href="/jounieh-lebanon-apartment-property-sale-rent.aspx">
                <asp:Literal ID="Literal21" runat="server" Text="<%$ Resources:Text.RegionalSearchTitle1 %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/Metn-lebanon-apartment-property-sale-rent.aspx">
                <asp:Literal ID="Literal22" runat="server" Text="<%$ Resources:Text.RegionalSearchTitle2 %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/offices-sale-rent-beirut-lebanon.aspx">
                <asp:Literal ID="Literal23" runat="server" Text="<%$ Resources:Text.RegionalSearchTitle3 %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/sell-rent-buy-land-house-chalet-keserwan.aspx">
                <asp:Literal ID="Literal24" runat="server" Text="<%$ Resources:Text.RegionalSearchTitle4 %>" /></a></div>
        <div class="arrow_blue_div">
            <a href="/tripoli-buy-rent-sell-apartment-lebanon.aspx">
                <asp:Literal ID="Literal25" runat="server" Text="<%$ Resources:Text.RegionalSearchTitle5 %>" /></a></div>
    </div>
</body>
</html>
