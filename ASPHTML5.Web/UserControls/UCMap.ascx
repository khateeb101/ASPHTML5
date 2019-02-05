<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCMap.ascx.cs" Inherits="ASPHTML5.Web.UserControls.UCMap" %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<style type="text/css">
    .blog a
    {
        color: #004F7F !important;
    }
    .blog a:hover
    {
        color: #6d6e71 !important;
    }
    .locator_container
    {
        position: relative;
        width: 208px;
        height: 131px;
    }
    .locatorText
    {
        display: none;
        position: absolute;
        top: 6px;
        left: 5px;
        width: 177px;
        height: 109px;
        padding: 10px 10px 0px 10px;
        background-color: #6dcde9;
        color: #ffffff;
        font-size: 12px;
        z-index: 2;
        line-height: 14px;
    }
    .locatorText p
    {
        margin-top: 5px;
    }
    .locatorText a
    {
        color: #ffffff;
        text-decoration: none;
    }
    .locatorText a:hover
    {
        text-decoration: underline;
    }
    .hoverImg
    {
        display: none;
        position: absolute;
        cursor: pointer;
        z-index: 1;
    }
    .hoverImg.big
    {
        top: 45px;
        left: 121px;
    }
    .hoverImg.medium
    {
        top: 36px;
        left: 128px;
    }
    .hoverImg.small
    {
        top: 17px;
        left: 141px;
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        $(".locatorText").hover(function () {
        }, function () {
            showHideText('');
            showHideHoverImages('', '')
        });
    });
    function showHideHoverImages(imgID, display) {
        var images = ["imgLocatorBeirut", "imgLocatorJounieh", "imgLocatorTripoli"];
        for (var i = 0; i < images.length; i++) {
            document.getElementById(images[i]).style.display = "none";
        }
        if (imgID != "") {
            document.getElementById(imgID).style.display = display;
        }
    }

    function showHideText(textID) {
        var texts = ["beirutText", "tripoliText", "jouniehText"];
        for (var t = 0; t < texts.length; t++) {
            document.getElementById(texts[t]).style.display = "none";
        }
        if (textID != "") {
            document.getElementById(textID).style.display = "block";
        }
    }
</script>
<%--<script type="text/javascript">
    AC_FL_RunContent('codebase', 'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0', 'width', '211', 'height', '134', 'src', '<%=BannerNameW %>', 'quality', 'high', 'pluginspage', 'http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash', 'movie', '<%=BannerNameW %>'); //end AC code
</script>
<noscript>
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0"
        width="211" height="134">
        <param name="movie" value="<%=BannerName %>" />
        <param name="quality" value="high" />
        <embed src="<%=BannerName %>" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash"
            type="application/x-shockwave-flash" width="211" height="134"></embed>
    </object>
</noscript>--%>
<div class="locator_container">
    <div class="locatorText" id="beirutText">
        <asp:Literal ID="Literal2" Text='<%$Resources:Text.LocatorBeirut%>' runat="server" />
    </div>
    <div class="locatorText" id="jouniehText">
        <asp:Literal Text='<%$Resources:Text.LocatorJounieh%>' runat="server" />
    </div>
    <div class="locatorText" id="tripoliText">
        <asp:Literal Text='<%$Resources:Text.LocatorTripoli%>' runat="server" />
    </div>
    <img src="<%$Resources:Image.Locator%>" runat="server" usemap="#locatorMap" />
    <img src="/images/locator/locator-hover-big.jpg" id="imgLocatorBeirut" class="hoverImg big"
        onmouseout="showHideHoverImages(this.id,'none');" onclick="showHideText('beirutText')" />
    <img src="/images/locator/locator-hover-small.jpg" id="imgLocatorTripoli" class="hoverImg small"
        onmouseout="showHideHoverImages(this.id,'none');" onclick="showHideText('tripoliText')" />
    <img src="/images/locator/locator-hover-medium.jpg" id="imgLocatorJounieh" class="hoverImg medium"
        onmouseout="showHideHoverImages(this.id,'none');" onclick="showHideText('jouniehText')" />
    <map name="locatorMap">
        <area shape="circle" id="locatorBeirut" coords="128,53,8" href="#" onmouseover="showHideHoverImages('imgLocatorBeirut','block');" />
        <area shape="circle" id="locatorJounieh" coords="132,40,4" href="#" onmouseover="showHideHoverImages('imgLocatorJounieh','block');" />
        <area shape="circle" id="locatorTripoli" coords="144,21,4" href="#" onmouseover="showHideHoverImages('imgLocatorTripoli','block');" />
    </map>
</div>
<br />
<div>
    <%--<div><img src="<%$ Resources:Image.newsletter_top %>" runat="server" alt="" /></div>--%>
    <table width="208" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td colspan="2" style="background-color: #035181; color: #fff; font-weight: bold;
                font-size: 14px;">
                <p style="margin: 5px; padding: 0px;">
                    <asp:Literal ID="Literal1" runat="server" Text="<%$ Resources:Text.Newsletter %>" /></p>
            </td>
        </tr>
        <tr>
            <td height="10" colspan="2" class="newsletter_middle">
            </td>
        </tr>
        <tr>
            <td valign="top" class="newsletter_middle font10px blue_text">
                <asp:HyperLink NavigateUrl="" ID="lnkNewsletterImage" runat="server" Target="_blank">
                    <asp:Image ImageUrl="" ID="imgNewsletter" Width="80px" Height="122px" runat="server"
                        Style="margin-left: 5px; margin-left: 5px" /></asp:HyperLink>
            </td>
            <td valign="top" class="newsletter_middle font10px blue_text">
                <div style="display: table; margin: 0px 5px">
                    <div style="display: table-row;">
                        <%-- <div class="white_text font14px">
                        <asp:Literal ID="Literal6" runat="server" Text="<%$ Resources:Text.WeekNewsletter %>" /></div>--%>
                        <div style="display: table-cell; height: 95px; vertical-align: middle">
                            <asp:HyperLink NavigateUrl="" ID="lnkNewsletterTitle" runat="server" Target="_blank"
                                Style="color: #fff !important; font-size: 14px !important">
                                <asp:Literal ID="ltrTitle" Text="" runat="server"></asp:Literal></asp:HyperLink>
                        </div>
                        <%--<div style="margin-top: 10px">
                        <asp:Literal ID="Literal2" runat="server" Text="<%$ Resources:Text.ReceiveFree %>" /></div>--%>
                    </div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="7" /></div>
                    <div class="textalignleft">
                        <a id="hrefCollpaseSub" href="javascript:collapse1.slideit();">
                            <img id="Img1" src="<%$Resources:Image.Subscribe%>" runat="server" alt="Subscribe"
                                width="78" height="17" title="Subscribe" border="0" /></a></div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" valign="top" class="newsletter_middle font10px blue_text">
                <div id="menu1" style="margin: 5px;width: 195px;">
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="13" /></div>
                    <div>
                        <asp:Literal ID="litemail" runat="server" Text="<%$ Resources:Text.EmailAddress %>" />&nbsp;<asp:RequiredFieldValidator
                            ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"
                            ValidationGroup="Newsletter"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                            Display="Dynamic" ErrorMessage="<%$Resources:Error.IncorrectEmail%>" ValidationGroup="Newsletter"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
                    <div>
                        <table border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <img id="Img2" src="<%$ Resources:Image.input_left %>" runat="server" alt="" />
                                </td>
                                <td class="input_bg">
                                    <input type="text" class="box" runat="server" id="txtEmail" />
                                </td>
                                <td>
                                    <img id="Img3" src="<%$ Resources:Image.input_right %>" runat="server" alt="" />
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="13" /></div>
                    <div>
                        <table class="blue_text font10px" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="90" valign="top" class="padding_txt_rad" colspan="5">
                                    <BotDetect:Captcha ID="SampleCaptcha" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ErrorMessage="*" ControlToValidate="CaptchaCodeTextBox"
                                        Display="Dynamic" runat="server" ValidationGroup="Newsletter"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td>
                                                <img id="Img9" src="<%$Resources:Image.input_left%>" width="6" height="19" runat="server"
                                                    alt="" />
                                            </td>
                                            <td width="90" class="input_bg">
                                                <asp:TextBox ID="CaptchaCodeTextBox" Style="width: 90px" CssClass="box" runat="server" ValidationGroup="Newsletter"/>
                                            </td>
                                            <td>
                                                <img id="Img10" src="<%$Resources:Image.input_right%>" width="6" height="18" runat="server"
                                                    alt="" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="13" /></div>
                    <div class="textalignleft">
                        <asp:ImageButton runat="server" ID="imgUnsubscribe" ValidationGroup="Newsletter"
                            ImageUrl="<%$Resources:Image.UnSubscribe%>" OnClick="imgUnsubscribe_Click" />
                        <asp:ImageButton runat="server" ID="imgSbscribe" ValidationGroup="Newsletter" ImageUrl="<%$ Resources:Image.submit %>"
                            OnClick="imgSbscribe_Click" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
                </div>
                <script type="text/javascript">
                    var collapse1 = new animatedcollapse("menu1", 800, false);
                </script>
            </td>
        </tr>
    </table>
    <%--<div><img src="<%$ Resources:Image.newsletter_bottom %>" runat="server" alt="" /></div>    --%>
</div>
