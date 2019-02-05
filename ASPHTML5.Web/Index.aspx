<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ASPHTML5.Web.Index"
    MasterPageFile="~/Common.Master" Title="Real Estate in Lebanon | Real Estate in Beirut | ASPHTML5"
    Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Src="~/UserControls/UCPropertySearch.ascx" TagName="UC_PropertySearch"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCMap.ascx" TagName="UCMap" TagPrefix="uc1" %>
<asp:Content runat="server" ContentPlaceHolderID="cpMeta">
   <meta name='description' runat="server" content='<%$ Resources:Meta.Desc %>' />
   <meta name='keywords' runat="server" content='<%$ Resources:Meta.Keywords %>' />
</asp:Content>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = "home"</script>
    <script>        id2 = ""</script>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <uc1:UC_PropertySearch ID="UC_PropertySearch1" runat="server" />
    <%--Latest start--%>
    <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="20">
                    <img id="Img6" src="<%$Resources:Image.view_1%>" runat="server" alt="" />
                </td>
                <td class="view_1_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="20">
                    <img id="Img7" src="<%$Resources:Image.view_2%>" runat="server" alt="" />
                </td>
            </tr>
        </table>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="13" class="view_left_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                        <td class="view_middle" height="100" valign="top">
                            <div class="blue_text font14px" style="margin-top: 5px; margin-bottom: 10px">
                                <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:LatestOnSale.Text%>" /></div>
                            <div>
                                <img src="/images/spacer.gif" alt="" width="1" height="12" /></div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <!-- scrollings layer here -->
                                        <table border="0" cellspacing="0" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td width="6">
                                                        <asp:ImageButton Visible="false" runat="server" ID="lnkPrevious" ImageUrl="<%$Resources:Image.arrow_blue_left%>"
                                                            Border="0" OnClick="lnkPrevious_Click" Style="height: 9px" />
                                                        <a onmouseup="dw_scrollObj.resetSpeed('wn')" onmouseover="dw_scrollObj.initScroll('wn','left')"
                                                            onmouseout="dw_scrollObj.stopScroll('wn')" onmousedown="dw_scrollObj.doubleSpeed('wn')"
                                                            onclick="return false" href="javascript:;">
                                                            <asp:Image runat="server" ID="imgArrowLeft" ImageUrl="~/images/arrow_blue_left.gif" Width="14" Height="16"
                                                                alt="Left" title="Left" /></a>
                                                        <td width="10">
                                                        </td>
                                                        <td valign="top" onmouseover="dw_scrollObj.stopScroll('wn')" onmouseout="dw_scrollObj.initScroll('wn', 'right',30)">
                                                            <!-- scrollings layer here -->
                                                            <div id="hold" style="height: 50px">
                                                                <div id="wn" style="height: 50px">
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
                                                                                                            <td valign="top" width="160px">
                                                                                                                <table border="0" cellspacing="0" cellpadding="0" width="160">
                                                                                                                    <tr>
                                                                                                                        <td width="46" valign="top">
                                                                                                                            <a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'>
                                                                                                                                <asp:Image runat="server" ID="imgSrc" ImageUrl='<%# "~/ImageViewer.aspx?ID=" + DataBinder.Eval(Container.DataItem, "TopImageId") + "&small=true"%>'
                                                                                                                                    Width="66px" Height="46px" border="0" ToolTip='<%# "Sodeco Gestion / " + GetLocalizedString(Container.DataItem,"PropertyType") + " " + GetLocalizedString(Container.DataItem,"PropertyFor") + " / " + (int.Parse(Eval("TotalBedrooms").ToString()) + int.Parse(Eval("MasterBedRooms").ToString()) + int.Parse(Eval("FamilyRoom ").ToString())) + " room(s) / " + DataBinder.Eval(Container.DataItem, "Size") + " m2 / $ " +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") && DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("sale") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice")) + " / " + string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice"))))%>' /></a>
                                                                                                                        </td>
                                                                                                                        <td width="4">
                                                                                                                        </td>
                                                                                                                        <td class="blue_text font9px" valign="top">
                                                                                                                            <div>
                                                                                                                                <a href='<%# ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>' title='<%# "Sodeco Gestion / " + GetLocalizedString(Container.DataItem,"PropertyType") + " " + GetLocalizedString(Container.DataItem,"PropertyFor") + " / " + int.Parse(Eval("TotalBedrooms").ToString()) + int.Parse(Eval("MasterBedRooms").ToString()) + int.Parse(Eval("FamilyRoom ").ToString()) + " room(s) / $ " +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") && DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("sale") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice")) + " / " + string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice"))))%>'>
                                                                                                                                    <asp:Literal ID="Literal8" runat="server" Text='<%# GetLocalizedString(Container.DataItem,"PropertyType") %>' />
                                                                                                                                    <asp:Literal ID="Literal9" runat="server" Text='<%# GetLocalizedString(Container.DataItem,"PropertyFor") %>' /></a></div>
                                                                                                                            <div>
                                                                                                                                <a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon  %>'>
                                                                                                                                    <%# int.Parse(Eval("TotalBedrooms").ToString()) + int.Parse(Eval("MasterBedRooms").ToString()) + int.Parse(Eval("FamilyRoom ").ToString())%>
                                                                                                                                    <%--<asp:Literal ID="Literal2" runat="server" Text='<%# GetLabelText(Container.DataItem) %>' /> | <%#DataBinder.Eval(Container.DataItem, "Size")%>m2</a></div>--%>
                                                                                                                                    <asp:Literal ID="Literal2" runat="server" Text="Room(s)" /><%--'<%$Resources:DataList.bedrooms%>'--%>
                                                                                                                                    |
                                                                                                                                    <%#DataBinder.Eval(Container.DataItem, "Size")%>
                                                                                                                                    m2 </a>
                                                                                                                            </div>
                                                                                                                            <div>
                                                                                                                                <a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'>$<%# DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") && DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("sale") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice")) + " / " + string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice")))%>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </td>
                                                                                                        </ItemTemplate>
                                                                                                    </asp:Repeater>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                        </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        </div> </div>
                                        <div id="scrollbar">
                                            <div id="track">
                                                <div id="dragBar">
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        <!-- end wn div -->
                                        <!-- end hold div -->
                                    </td>
                                    <td width="10">
                                    </td>
                                    <td width="6">
                                        <asp:ImageButton Visible="false" runat="server" ID="lnkNext" ImageUrl="<%$Resources:Image.arrow_blue_right%>"
                                            Border="0" OnClick="lnkNext_Click" />
                                        <a onmouseup="dw_scrollObj.resetSpeed('wn')" onmouseover="dw_scrollObj.initScroll('wn','right')"
                                            onmouseout="dw_scrollObj.stopScroll('wn')" onmousedown="dw_scrollObj.doubleSpeed('wn')"
                                            onclick="return false" href="javascript:;">
                                            <asp:Image runat="server" ImageUrl="~/images/arrow_blue_right.gif" Width="14" Height="16" ID="imgArrowRight"
                                                alt="Right" title="Right" /></a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <!-- end hold div -->
                        </td>
                    </tr>
                </table>
                </td>
                <td width="13" class="view_right_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                </tr> </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="20">
                    <img id="Img8" src="<%$Resources:Image.view_3%>" runat="server" alt="" />
                </td>
                <td class="view_3_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="20">
                    <img id="Img9" src="<%$Resources:Image.view_4%>" runat="server" alt="" />
                </td>
            </tr>
        </table>
    </div>
    <%--Latest begin--%>
    <div>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td style="width: 17px;">
                </td>
                <td>
                <h1 class="seo_title"><asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Text.Header%>" /></h1>
                    <div style="float: left; margin:15px 0px;" class="font14px">
                        <asp:Literal ID="Literal13" runat="server" Text="<%$Resources:Header.Intro%>" /></div>
                </td>
            </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="17">
                    <img id="Img1" src="<%$Resources:Image.arrange_1%>" width="17" height="11" runat="server" alt="" />
                </td>
                <td class="arrange_1_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="17">
                    <img id="Img2" src="<%$Resources:Image.arrange_2%>" width="17" height="11" runat="server" alt="" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="17" class="arrange_left_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td class="arrange_middle">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td class="font11px">
                                <asp:Literal ID="Literal6" runat="server" Text="<%$Resources:Evaluation.Text%>" />
                            </td>
                            <td width="128">
                                <a href="EvaluationRequest/Eval">
                                    <img id="Img3" src="<%$Resources:Image.arrange%>" width="128" height="19" runat="server" alt="" border="0" /></a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td width="17" class="arrange_right_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="17">
                    <img id="Img4" src="<%$Resources:Image.arrange_3%>" width="17" height="14" runat="server" alt="" />
                </td>
                <td class="arrange_3_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="17">
                    <img id="Img5" src="<%$Resources:Image.arrange_4%>" width="17" height="14" runat="server" alt="" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="20">
                    <img src="<%$Resources:Image.view_1%>" runat="server" alt="" />
                </td>
                <td class="view_1_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="20">
                    <img src="<%$Resources:Image.view_2%>" runat="server" alt="" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="13" class="view_left_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td class="view_middle">
                    <div>
                        <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:View.Some%>" /><a href="javascript:collapse2.slideit();"><asp:Literal
                            ID="Literal2" runat="server" Text="<%$Resources:View.Reason%>" /></a></div>
                    <div id="menu2">
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="210" valign="top">
                                    <div class="font13px">
                                        <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:View.ToBuy%>" /></div>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
                                    <asp:DataList ID="dtForSale" runat="server" ShowFooter="false" ShowHeader="False"
                                        Width="100%" CssClass="datalist">
                                        <ItemTemplate>
                                            <div class="arrow_blue_div3">
                                                <asp:HyperLink runat="server" ID="hlSale" NavigateUrl='<%#"~/searchresults.aspx?for=sale&where="+Eval("district") %>'>
                                                    <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:View.ToBuyText%>" />&nbsp;<%# Eval("District")%></asp:HyperLink></div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                                <td width="98">
                                </td>
                                <td valign="top">
                                    <div class="font13px">
                                        <asp:Literal ID="Literal5" runat="server" Text="<%$Resources:View.ToRent%>" /></div>
                                    <div>
                                        <img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
                                    <asp:DataList ID="dtForRent" runat="server" ShowFooter="false" ShowHeader="False"
                                        Width="100%" CssClass="datalist">
                                        <ItemTemplate>
                                            <div class="arrow_blue_div3">
                                                <asp:HyperLink runat="server" ID="hlSale" NavigateUrl='<%#"~/searchresults.aspx?for=rent&where="+Eval("district") %>'>
                                                    <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:View.ToRentText%>" />&nbsp;<%# Eval("District")%></asp:HyperLink></div>
                                        </ItemTemplate>
                                    </asp:DataList>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <script type="text/javascript">
                        var collapse2 = new animatedcollapse("menu2", 800, false);
                    </script>
                </td>
                <td width="13" class="view_right_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
            </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="20">
                    <img src="<%$Resources:Image.view_3%>" runat="server" alt="" />
                </td>
                <td class="view_3_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="20">
                    <img src="<%$Resources:Image.view_4%>" runat="server" alt="" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
    <div class="pad_col_right">
        <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
    </div>
    <script>
        initScrollLayer();
        dw_scrollObj.initScroll('wn', 'right', 30);
    </script>
</asp:Content>
