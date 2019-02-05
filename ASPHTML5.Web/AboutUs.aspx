<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ASPHTML5.Web.AboutUs"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Services" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCPropertyEvaluationRequest.ascx" TagName="UC_PropertyEvaluationRequest"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = "aboutus"</script>
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
                    <img id="Img2" src="<%$Resources:Image.arrange_1 %>" width="17" height="11" runat="server" alt="" />
                </td>
                <td class="arrange_1_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="17">
                    <img id="Img3" src="<%$Resources:Image.arrange_2 %>" width="17" height="11" runat="server" alt="" />
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
                                    <img id="Img4" src="<%$Resources:Image.arrange %>" width="128" height="19" runat="server" alt="" border="0" /></a>
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
                    <img id="Img5" src="<%$Resources:Image.arrange_3 %>" width="17" height="14" runat="server" alt="" />
                </td>
                <td class="arrange_3_bg">
                    <img src="/images/spacer.gif" alt="" />
                </td>
                <td width="17">
                    <img id="Img6" src="<%$Resources:Image.arrange_4 %>" width="17" height="14" runat="server" alt="" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
    <div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div>
                        <img id="Img7" src="<%$Resources:Image.services_img_1 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div>
                        <img id="Img8" src="<%$Resources:Image.services_img_2 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div>
                        <img id="Img9" src="<%$Resources:Image.services_img_8 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
            </tr>
            <tr class="textalignleft">
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal7" runat="server" Text="<%$Resources:Text.Service1%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal9" runat="server" Text="<%$Resources:Text.Service2%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal10" runat="server" Text="<%$Resources:Text.Service3%>" /></div>
                </td>
            </tr>
            <tr class="textalignleft">
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text textalignjustify">
                    <div>
                        <asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Text.ServiceText1%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text textalignjustify">
                    <div>
                        <asp:Literal ID="Literal17" runat="server" Text="<%$Resources:Text.ServiceText2%>" />
                    </div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text textalignjustify">
                    <div>
                        <asp:Literal ID="Literal18" runat="server" Text="<%$Resources:Text.ServiceText3%>" /></div>
                </td>
            </tr>
        </table>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div>
                        <img id="Img10" src="<%$Resources:Image.services_img_5 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div>
                        <img id="Img11" src="<%$Resources:Image.services_img_6 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div>
                        <img id="Img12" src="<%$Resources:Image.services_img_4%>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
            </tr>
            <tr class="textalignleft">
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal11" runat="server" Text="<%$Resources:Text.Service4%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal12" runat="server" Text="<%$Resources:Text.Service5%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal13" runat="server" Text="<%$Resources:Text.Service6%>" /></div>
                </td>
            </tr>
            <tr class="textalignleft">
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text textalignjustify">
                    <div>
                        <asp:Literal ID="Literal19" runat="server" Text="<%$Resources:Text.ServiceText4%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text textalignjustify">
                    <div>
                        <asp:Literal ID="Literal20" runat="server" Text="<%$Resources:Text.ServiceText5%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text textalignjustify">
                    <div>
                        <asp:Literal ID="Literal21" runat="server" Text="<%$Resources:Text.ServiceText6%>" /></div>
                </td>
            </tr>
        </table>
        <div>
            <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div>
                        <img id="Img13" src="<%$Resources:Image.services_img_7 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div>
                        <img id="Img14" src="<%$Resources:Image.services_img_9 %>" runat="server" alt="" /></div>
                    <div>
                        <img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                </td>
            </tr>
            <tr class="textalignleft">
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal14" runat="server" Text="<%$Resources:Text.Service7%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                    <div class="font13px fontbold">
                        <asp:Literal ID="Literal15" runat="server" Text="<%$Resources:Text.Service8%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                </td>
            </tr>
            <tr class="textalignleft">
                <td width="14">
                </td>
                <td width="165" valign="top" class="blue_text textalignjustify">
                    <div>
                        <asp:Literal ID="Literal22" runat="server" Text="<%$Resources:Text.ServiceText7%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text textalignjustify">
                    <div>
                        <asp:Literal ID="Literal23" runat="server" Text="<%$Resources:Text.ServiceText8%>" /></div>
                </td>
                <td width="15">
                </td>
                <td width="165" valign="top" class="blue_text">
                </td>
            </tr>
        </table>
    </div>
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
    <uc1:UC_PropertyEvaluationRequest ID="UC_PropertyEvaluationRequest1" runat="server" />
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
    <div class="font14px added_section2 middle_padd" style="margin-top: 0px; position: relative">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Services.aspx" Text="<%$Resources:Text.ServicesLink%>"
            runat="server" /></div>
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
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
                        <asp:Literal ID="Literal28" runat="server" Text="<%$Resources:Text.PropertyValueIncrease%>" /><span
                            class="fontbold">+961 1 616 000</span>
                        <asp:Literal ID="Literal29" runat="server" Text="<%$Resources:Text.FindOut%>" /><span
                            class="fontbold"><asp:Literal ID="Literal30" runat="server" Text="<%$Resources:Text.PropertyValue%>" /></span></div>
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
                                            <contenttemplate>
						<table width="100%" cellspacing="0" cellpadding="0" border="0">
	<tr>
	  <td valign="top" >
    <div><asp:ImageButton runat="server" ID="lnkPrevious" 
                                        ImageUrl="<%$Resources:Image.arrow_blue_top%>" Border="0" onclick="lnkPrevious_Click" /></div>	
	<div class="content">
	<asp:DataList ID="dtList" runat="server" ShowFooter="false" ShowHeader="False" Width="100%">
                                <ItemTemplate>
                                 <table border="0" cellspacing="0" cellpadding="0" width="140">
  <tr>
    <td width="66"><a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'><asp:Image runat="server" ID="imgSrc" ImageUrl='<%# "~/ImageViewer.aspx?ID=" + DataBinder.Eval(Container.DataItem, "TopImageId")%>' Width="66px" Height="46px" border="0"/></a></td>
    <td width="4"></td>
    <td class="blue_text font9px">
    <div><a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'> <asp:Literal ID="Literal8" runat="server" Text='<%# GetLocalizedString(Container.DataItem,"PropertyType") %>' /> <asp:Literal ID="Literal9" runat="server" Text='<%# GetLocalizedString(Container.DataItem,"PropertyFor") %>' /></a></div>
    <div><a href='<%#  ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'><%# DataBinder.Eval(Container.DataItem, "TotalBedrooms")%> <asp:Literal ID="Literal2" runat="server" Text='<%$Resources:DataList.bedrooms%>' /> | <%# DataBinder.Eval(Container.DataItem, "Size")%>m2</a></div>
    </td>
  </tr>
  </table>
  <div><img src="/images/spacer.gif" alt="" width="1" height="30" /></div>
                                </ItemTemplate>
                                </asp:DataList>
	</div>	
<div><asp:ImageButton runat="server" ID="lnkNext" 
                                        ImageUrl="<%$Resources:Image.arrow_blue_bottom%>" Border="0" onclick="lnkNext_Click" /></div>
</td>	
	</tr>
</table> 
		</contenttemplate>
                                        </asp:UpdatePanel></div>
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
                            <a href="javascript:collapse2.slideit();">
                                <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:View.Reason%>" /></a>
                                <div id="buyrentMenu" style="margin-top:8px">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="top">
          <div class="font13px"><asp:Literal ID="Literal16" runat="server" Text="Properties to buy" /></div><%--<%$Resources:View.ToBuy%>--%>
          <div><img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
           <asp:DataList ID="dtForSale" runat="server" ShowFooter="false" ShowHeader="False" Width="100%" CssClass="datalist">
            <ItemTemplate>
              <div class="arrow_blue_div3"><asp:HyperLink runat="server" ID="hlSale" NavigateUrl='<%#"~/searchresults.aspx?for=sale&where="+Eval("district") %>'> <asp:Literal ID="Literal7" runat="server" Text="Properties for sale in" />&nbsp;<%# Eval("District")%></asp:HyperLink></div> <%--<%$Resources:View.ToBuyText%>--%>
            </ItemTemplate>
            </asp:DataList>
          <div class="font13px"><asp:Literal ID="Literal24" runat="server" Text="Rental Properties" /></div><%--<%$Resources:View.ToRent%>--%>
          <div><img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
           <asp:DataList ID="dtForRent" runat="server" ShowFooter="false" ShowHeader="False" Width="100%" CssClass="datalist">
            <ItemTemplate>
              <div class="arrow_blue_div3"><asp:HyperLink runat="server" ID="hlSale" NavigateUrl='<%#"~/searchresults.aspx?for=rent&where="+Eval("district") %>'> <asp:Literal ID="Literal7" runat="server" Text="Rental Property in" />&nbsp;<%# Eval("District")%></asp:HyperLink></div><%--<%$Resources:View.ToRentText%>--%>
            </ItemTemplate>
            </asp:DataList>
       </td>
        </tr>
      	</table>
                                </div>
                                <script type="text/javascript">
                                    var collapse2 = new animatedcollapse("buyrentMenu", 800, false);
			</script>
                                </div>
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
