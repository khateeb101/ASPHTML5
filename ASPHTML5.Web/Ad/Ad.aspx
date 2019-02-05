<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ad.aspx.cs" Inherits="ASPHTML5.Web.Ad.Ad" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../includes/styles.css" rel="stylesheet" type="text/css" />
    <link href="../includes/scroll_new.css" rel="stylesheet" type="text/css" />

    <script language="JavaScript" type="text/JavaScript" src="../includes/functions.js"></script>

    <!-- Scroll Function Begin -->

    <script type="text/javascript" src="../includes/scroll/dw_scrollObj.js"></script>

    <script type="text/javascript" src="../includes/scroll/dw_hoverscroll.js"></script>

    <script type="text/javascript" src="../includes/scroll/dw_event.js"></script>

    <script type="text/javascript" src="../includes/scroll/dw_slidebar.js"></script>

    <script type="text/javascript" src="../includes/scroll/dw_scroll_aux.js"></script>

</head>
<body style="margin:0px;padding:0px;">
    <form id="form1" runat="server">
    <asp:Image runat="server" ImageUrl="~/images/EmptyImage1.png" />
    <table  class="generalsection" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td valign="top">
                <!-- scrollings layer here -->
                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="6">
                                <a onmouseup="dw_scrollObj.resetSpeed('wn')" onmouseover="dw_scrollObj.initScroll('wn','left')"
                                    onmouseout="dw_scrollObj.stopScroll('wn')" onmousedown="dw_scrollObj.doubleSpeed('wn')"
                                    onclick="return false" href="javascript:;">
                                    <img border="0" src="../images/arrow_blue_left.gif" width="14" height="16" alt="Left" title="Left"></a>
                            </td>
                            <td width="10">
                            </td>
                            <td valign="top" onmouseover="dw_scrollObj.stopScroll('wn')" onmouseout="dw_scrollObj.initScroll('wn', 'right',30)">
                                <!-- scrollings layer here -->
                                <div id="hold">
                                    <div id="wn">
                                        <div id="lyr1" class="content">
                                            <table dir="ltr" id="t1" border="0" cellspacing="0" cellpadding="0">
                                                <tbody>
                                                    <tr>
                                                        <td valign="top">
                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                                <tbody>
                                                                    <tr>
                                                                        <asp:Repeater ID="dtList" runat="server">
                                                                            <ItemTemplate>
                                                                                <td valign="top" width="160">
                                                                                    <table border="0" cellspacing="0" cellpadding="0" width="160">
                                                                                        <tr>
                                                                                            <td width="46">
                                                                                                <a href='<%# "http://www.sodeco-gestion.com/PropertyDetails.aspx?ID=" + DataBinder.Eval(Container.DataItem, "PRL") %>'>
                                                                                                    <asp:Image runat="server" ID="imgSrc" ImageUrl='<%# "http://www.sodeco-gestion.com/ImageViewer.aspx?ID=" + DataBinder.Eval(Container.DataItem, "TopImageId")%>'
                                                                                                        Width="66px" Height="46px" border="0" /></a>
                                                                                            </td>
                                                                                            <td width="4">
                                                                                            </td>
                                                                                            <td class="blue_text font9px">
                                                                                                <a style="text-decoration: none;" target="_blank" href="http://www.sodeco-gestion.com/PropertyDetails.aspx?ID=<%#DataBinder.Eval(Container.DataItem, "PRL")%>">
                                                                                                    <div>
                                                                                                        <%#DataBinder.Eval(Container.DataItem, "PropertyType")%>
                                                                                                        <%#DataBinder.Eval(Container.DataItem, "PropertyFor")%></div>
                                                                                                    <div>
                                                                                                        <%#DataBinder.Eval(Container.DataItem, "TotalBedrooms")%>
                                                                                                        bedrooms |
                                                                                                        <%#DataBinder.Eval(Container.DataItem, "size")%>m2</div>
                                                                                                </a>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </ItemTemplate>
                                                                        </asp:Repeater>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- end wn div -->
                                    <div id="scrollbar">
                                        <div id="track">
                                            <div id="dragBar">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end hold div -->
                            </td>
                            <td width="10">
                            </td>
                            <td width="6">
                                <a onmouseup="dw_scrollObj.resetSpeed('wn')" onmouseover="dw_scrollObj.initScroll('wn','right')"
                                    onmouseout="dw_scrollObj.stopScroll('wn')" onmousedown="dw_scrollObj.doubleSpeed('wn')"
                                    onclick="return false" href="javascript:;">
                                    <img border="0" src="../images/arrow_blue_right.gif" width="14" height="16" alt="Right" title="Right"></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!-- end hold div -->
            </td>
        </tr>
    </table>
    </form>

    <script type="text/javascript">
        initScrollLayer();
        dw_scrollObj.initScroll('wn', 'right', 30);        
    </script>

</body>
</html>
