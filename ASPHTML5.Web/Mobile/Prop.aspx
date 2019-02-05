<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true"
    CodeBehind="Prop.aspx.cs" Inherits="ASPHTML5.Web.Mobile.Prop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="../includes/dw_scroll_c.js" type="text/javascript"></script>
     <link href="../Mobile/Styles/Mobile.css" rel="stylesheet" type="text/css" />



    <link href="../fancybox/source/helpers/jquery.fancybox-buttons.css" rel="stylesheet"type="text/css" />   
    <link href="../fancybox/source/helpers/jquery.fancybox-thumbs.css" rel="stylesheet"type="text/css" />
    <link href="../fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <script src="../fancybox/source/jquery.fancybox.js" type="text/javascript"></script>
    <script src="../fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="../fancybox/source/helpers/jquery.fancybox-thumbs.js" type="text/javascript"></script>
    <script src="../fancybox/source/helpers/jquery.fancybox-buttons.js" type="text/javascript"></script>
    <script src="../fancybox/source/helpers/jquery.fancybox-media.js" type="text/javascript"></script>
    <script type="text/javascript">

        function init_dw_Scroll() {
            // arguments: id of scroll area div, id of content div
            var wndo = new dw_scrollObj('wnMobileImages', 'lyrMobileImages');

            // args: id, axis
            wndo.buildScrollControls('scrollLinksMobileImages', 'h');

            // for mousedown scrolling, add as 3rd argument
            //wndo.buildScrollControls('scrollLinks', 'h', 'mousedown');
            // w/o title
            // args: id, axis, eType, bScrollbar, include title?
            //wndo.buildScrollControls('scrollLinks', 'h', 'mousedown', false, false);
        }

        // if code supported, link in the style sheet (optional) and call the init function onload
        if (dw_scrollObj.isSupported()) {
            dw_Util.writeStyleSheet('Styles/scroll_h.css');
            dw_Event.add(window, 'load', init_dw_Scroll);
        }

    </script>
    <script type="text/javascript">        var switchTo5x = true;</script>
    <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
    <script type="text/javascript">        stLight.options({ publisher: "ur-380ec50e-b841-94be-d334-11b73553afa0" }); </script>
    <script src="../Mobile/Scripts/Mobile.js" type="text/javascript"></script>
    <script src="../includes/jquery.galleryview-2.0.js" type="text/javascript"></script>
    <script src="../includes/jquery.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".fancybox").fancybox();
            $(".fancybox-thumb").fancybox({
                prevEffect: 'none',
                nextEffect: 'none',
                helpers: {
                    title: {
                        type: 'outside'
                    },
                    thumbs: {
                        width: 50,
                        height: 50
                    }
                }
            });
        });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                PRL
            </td>
            <td>
                <asp:Label Text="" ID="lblPRL" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label Text="" ID="lblDescription" runat="server" />
            </td>            
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label Text="" ID="lblPrice" runat="server" />
            </td> 
        </tr>
        <tr>
             <td colspan="2">
                <asp:Label Text="" ID="lblSize" runat="server" />
            </td> 
        </tr>        
    </table>--%>
    <table width="100%" style="background-color: #02507f" cellpadding="0" cellspacing="0"
        border="0">
        <tr>
            <td colspan="2" style="width: 95%">
                <br />
                <asp:Literal ID="Literal6" runat="server" /><br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 31%">
                <b>
                    <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.Reference%>" /></b>
            </td>
            <td width="80%">
                <span style="color: White; text-decoration: none">
                    <asp:Label ID="lblReference" runat="server" Text=""></asp:Label></span>
            </td>
        </tr>
        <tr>
            <td style="width: 31%">
                <b>
                    <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.Location%>" /></b>
            </td>
            <td width="80%">
                <asp:Label ID="lblLocation" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 31%" colspan="2">
                <b>
                    <asp:Label ID="lblPropertyType" runat="server" Text=""></asp:Label>
                    &nbsp;<asp:Literal ID="Literal2" runat="server" Text="<%$Resources:Text.ComposedOf%>" /></b>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Literal ID="litDetails" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 31%">
                <b>
                    <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.Surface%>" /></b>
            </td>
            <td width="80%">
                <asp:Label ID="lblSurface" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 31%">
                <b>
                    <asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Text.Price%>" /></b>
            </td>
            <td width="80%">
                <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 31%">
                <b>
                    <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:Text.Department%>" /></b>
            </td>
            <td width="80%">
                <asp:Label ID="lblDepName" runat="server" Text=""></asp:Label>
                <asp:Literal Text="" ID="ltlDepLink" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <%--<div>
                    <asp:HyperLink runat="server" ID="hlArrange">
                        <img id="Img2" src="<%$Resources:Image.arrange2%>" alt="" border="0" runat="server" /></asp:HyperLink></div>--%>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <div>
                    <asp:HyperLink runat="server" ID="hlArrange">
                        <asp:Image ID="Img2" ImageUrl="<%$Resources:Image.arrange2%>" alt="" BorderWidth="2px" BorderStyle="Solid" BorderColor="White" runat="server"  />
                    </asp:HyperLink></div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <span class='st_facebook_large' displaytext='Facebook'></span><span class='st_twitter_large'
                    displaytext='Tweet'></span><span class='st_linkedin_large' displaytext='LinkedIn'>
                </span><span class='st_pinterest_large' displaytext='Pinterest'></span><span class='st_email_large'
                    displaytext='Email'></span>
            </td>
        </tr>
    </table>
    <%--<div style="width: 100%; text-align: center">
        <asp:DataList ID="imagesList" CellSpacing="10" RepeatColumns="2" RepeatDirection="Horizontal"
            RepeatLayout="Table" runat="server">
            <ItemTemplate>
                <asp:HyperLink NavigateUrl='<%#ResolveUrl("~/") + "ImageViewer.aspx?big=1&ID=" + Eval("ID") %>'
                    runat="server">
                    <asp:Image Width="100px" runat="server" ID="imgSrc" ImageUrl='<%#ResolveUrl("~/") + "ImageViewer.aspx?ID=" + Eval("ID") %>'
                        border="0" /></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
    </div>--%>
        <div id="scrollLinksMobileImages"></div>
    <div id="wnMobileImages">
        <div id="lyrMobileImages">
            <ul id="horizMobileImages">
                <asp:Repeater runat="server" ID="imagesList">
                    <ItemTemplate>
                        <li>
                            <asp:HyperLink  CssClass="fancybox" rel="gallery1" NavigateUrl='<%#ResolveUrl("~/") + "ImageViewer.aspx?big=1&ID=" + Eval("ID") %>'
                                runat="server">
                                <asp:Image runat="server" ID="imgSrc" ImageUrl='<%#ResolveUrl("~/") + "ImageViewer.aspx?ID=" + Eval("ID") %>'
                                    border="0" />
                            </asp:HyperLink>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
</asp:Content>
