<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="ASPHTML5.Web.Services"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Services" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCPropertyEvaluationRequest.ascx" TagName="UC_PropertyEvaluationRequest"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = "services"</script>
    <script>        id2 = ""</script>
    <div class="font14px">
        <div style="text-transform: uppercase;">
            <asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Text.Header%>" /></div>
        <br />
        <br />
        <asp:Literal ID="Literal6" runat="server" Text="<%$Resources:Text.HeaderContent%>" /></div>
    <meta id="Meta1" name='description' runat="server" content='<%$ Resources:Meta.Desc %>' />
    <meta id="Meta2" name='keywords' runat="server" content='<%$ Resources:Meta.Keywords %>' />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="17">
                    <img id="Img2" src="<%$Resources:Image.arrange_1 %>" width="17" height="11" runat="server"
                        alt="" />
                </td>
                <td class="arrange_1_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="17">
                    <img id="Img3" src="<%$Resources:Image.arrange_2 %>" width="17" height="11" runat="server"
                        alt="" />
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
                                <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.PropertValueIncrease%>" />
                            </td>
                            <td width="128">
                                <a href="EvaluationRequest/Eval">
                                    <img id="Img4" src="<%$Resources:Image.arrange %>" width="128" height="19" runat="server"
                                        alt="" border="0" /></a>
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
                    <img id="Img5" src="<%$Resources:Image.arrange_3 %>" width="17" height="14" runat="server"
                        alt="" />
                </td>
                <td class="arrange_3_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="17">
                    <img id="Img6" src="<%$Resources:Image.arrange_4 %>" width="17" height="14" runat="server"
                        alt="" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
    <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td style="width: 14px">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div>
                        <img id="Img7" src="<%$Resources:Image.services_img_1 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="15">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div>
                        <img id="Img8" src="<%$Resources:Image.services_img_2 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="8">
                </td>
            </tr>
            <tr class="textalignleft">
                <td style="width: 14px">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:Text.Service1%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal9" runat="server" Text="<%$Resources:Text.Service2%>" /></div>
                </td>
                <td width="8">
                </td>
            </tr>
            <tr class="textalignleft">
                <td style="width: 14px">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div>
                        <asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Text.ServiceText1%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div>
                        <asp:Literal ID="Literal17" runat="server" Text="<%$Resources:Text.ServiceText2%>" />
                </td>
                <td width="8">
                </td>
            </tr>
        </table>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td style="width: 14px">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div>
                        <img id="Img9" src="<%$Resources:Image.services_img_3 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="15">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div>
                        <img id="Img10" src="<%$Resources:Image.services_img_4 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="8">
                </td>
            </tr>
            <tr class="textalignleft">
                <td style="width: 14px">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Text.Service3%>" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="23" /></div>
                </td>
                <td width="15">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Text.Service4%>" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="23" /></div>
                </td>
                <td width="8">
                </td>
            </tr>
            <tr class="textalignleft">
                <td style="width: 14px">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div>
                        <asp:Literal ID="Literal12" runat="server" Text="<%$Resources:Text.ServiceText3%>" />
                    </div>
                </td>
                <td width="15">
                </td>
                <td width="245" valign="top" class="blue_text">
                    <div>
                        <asp:Literal ID="Literal13" runat="server" Text="<%$Resources:Text.ServiceText4%>" />
                    </div>
                </td>
                <td width="8">
                </td>
            </tr>
        </table>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
        <uc1:UC_PropertyEvaluationRequest ID="UC_PropertyEvaluationRequest1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpRightPanel">
    <div>
        <div>
            <img src="<%$Resources:Image.newsletter_top %>" runat="server" alt="" /></div>
        <table width="208" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td class="newsletter_left" width="10">
                    <img src="/images/spacer.gif" />
                </td>
                <td valign="top" class="newsletter_middle font10px blue_text">
                    <div class="textalignleft font11px">
                        <asp:Literal ID="Literal28" runat="server" Text="<%$Resources:Text.PropertyValueIncrease%>" />
                        <asp:Literal ID="Literal29" runat="server" Text="<%$Resources:Text.FindOut%>" />
                        <span class="fontbold">
                            <asp:Literal ID="Literal30" runat="server" Text="<%$Resources:Text.PropertyValue%>" /></span></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="7" /></div>
                    <div class="textalignright">
                        <a href="EvaluationRequest/Eval">
                            <img src="<%$Resources:Image.arrange %>" runat="server" alt="" border="0" /></a></div>
                </td>
                <td class="newsletter_right" width="8">
                    <img src="/images/spacer.gif" />
                </td>
            </tr>
        </table>
        <div>
            <img src="<%$Resources:Image.newsletter_bottom %>" runat="server" alt="" /></div>
    </div>
    <div class="services_padd_right" style="width: 215px;">
        <div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="20">
                        <img src="<%$Resources:Image.view_1 %>" runat="server" alt="" />
                    </td>
                    <td class="view_1_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                    <td width="20">
                        <img src="<%$Resources:Image.view_2 %>" runat="server" alt="" />
                    </td>
                </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="13" class="view_left_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                    <td class="view_middle">
                        <div class="blue_text font13px fontbold">
                            <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:LatestOnSale.Text%>" /></div>
                        <div>
                            <img src="/images/spacer.gif" alt="" width="1" height="12" /></div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <div class="scrolldiv">
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                    <tr>
                                                        <td valign="top">
                                                            <div>
                                                                <asp:ImageButton runat="server" ID="lnkPrevious" ImageUrl="<%$Resources:Image.arrow_blue_top%>"
                                                                    Border="0" OnClick="lnkPrevious_Click" /></div>
                                                            <div class="content">
                                                                <asp:DataList ID="dtList" runat="server" ShowFooter="false" ShowHeader="False" Width="100%">
                                                                    <ItemTemplate>
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="140">
                                                                            <tr>
                                                                                <td width="66">
                                                                                    <a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'>
                                                                                        <asp:Image runat="server" ID="imgSrc" ImageUrl='<%# "~/ImageViewer.aspx?ID=" + DataBinder.Eval(Container.DataItem, "TopImageId")%>'
                                                                                            Width="66px" Height="46px" border="0" /></a>
                                                                                </td>
                                                                                <td width="4">
                                                                                </td>
                                                                                <td class="blue_text font9px">
                                                                                    <div>
                                                                                        <a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'>
                                                                                            <%# DataBinder.Eval(Container.DataItem, "PropertyType")%>
                                                                                            to
                                                                                            <%# DataBinder.Eval(Container.DataItem, "PropertyFor")%></a></div>
                                                                                    <div>
                                                                                        <a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'>
                                                                                            <%# int.Parse(Eval("TotalBedrooms").ToString()) + int.Parse(Eval("MasterBedRooms").ToString()) + int.Parse(Eval("FamilyRoom ").ToString())%>
                                                                                            bedrooms |
                                                                                            <%# DataBinder.Eval(Container.DataItem, "Size")%>m2</a></div>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                        <div>
                                                                            <img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
                                                                    </ItemTemplate>
                                                                </asp:DataList>
                                                            </div>
                                                            <div>
                                                                <asp:ImageButton runat="server" ID="lnkNext" ImageUrl="<%$Resources:Image.arrow_blue_bottom%>"
                                                                    Border="0" OnClick="lnkNext_Click" /></div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="13" class="view_right_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="20">
                        <img src="<%$Resources:Image.view_3 %>" runat="server" alt="" />
                    </td>
                    <td class="view_3_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                    <td width="20">
                        <img src="<%$Resources:Image.view_4 %>" runat="server" alt="" />
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="20">
                        <img src="<%$Resources:Image.view_1 %>" runat="server" alt="" />
                    </td>
                    <td class="view_1_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                    <td width="20">
                        <img src="<%$Resources:Image.view_2 %>" runat="server" alt="" />
                    </td>
                </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="13" class="view_left_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                    <td class="view_middle textalignleft">
                        <div>
                            <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:View.Some%>" />
                            <a href="javascript:;">
                                <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:View.Reason%>" /></a></div>
                    </td>
                    <td width="13" class="view_right_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="20">
                        <img src="<%$Resources:Image.view_3 %>" runat="server" alt="" />
                    </td>
                    <td class="view_3_bg">
                        <img src="/images/spacer.gif" alt="" />
                    </td>
                    <td width="20">
                        <img src="<%$Resources:Image.view_4 %>" runat="server" alt="" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
    <div class="pad_col_right">
        <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
    </div>
</asp:Content>
