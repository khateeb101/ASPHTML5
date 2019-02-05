<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ASPHTML5.Web.Mobile.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20"><img id="Img7" src="<%$Resources:Image.view_1%>" runat="server" alt="" /></td>
        <td class="view_1_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="20"><img id="Img8" src="<%$Resources:Image.view_2%>" runat="server" alt="" /></td>
      </tr>
    	</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="13" class="view_left_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td class="view_middle">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>
          <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="215" class="blue_text font10px"><asp:Label ID="lblSearchResult" 
                    runat="server" Text=""></asp:Label> 
                <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Search.PropertiesFound%>" /></td>
            <td width="5"></td>
           <td>
            </td>
            <td width="4"></td>
            <td>
            </td>
          </tr>          
        	</table>

          </td>
          <td></td>
        </tr>
        <tr>
        <td height="10"></td>
        </tr>
        <tr>
          <td colspan="6">
              <asp:DropDownList runat="server" CssClass="select" ID="ddlNeigh" 
                  AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Value" 
                  DataValueField="Value" AppendDataBoundItems="true">
                  <asp:ListItem Text="Select District" Value=""/>
              </asp:DropDownList> 
              <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                  SelectMethod="GetPropertyDisticts" TypeName="ASPHTML5.BAL.Lookup">
              </asp:ObjectDataSource>
              <asp:DropDownList ID="ddlSorting" ClientIDMode="Static" runat="server" CssClass="select" 
                    AutoPostBack="True" OnSelectedIndexChanged="ddlSorting_SelectedIndexChanged">
                    <asp:ListItem Text="<%$Resources:Sort.New%>" Value="2" ></asp:ListItem>
            <asp:ListItem Text="<%$Resources:Sort.Price%>" Value="1" ></asp:ListItem>            
            </asp:DropDownList>
            <%--  <asp:DropDownList ID="ddlPaging" runat="server" CssClass="select" 
                     AutoPostBack="True" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
            <asp:ListItem Text="<%$Resources:Paging.10%>" Value="10" ></asp:ListItem>
            <asp:ListItem Text="<%$Resources:Paging.30%>" Value="30" Selected="True"></asp:ListItem>
            <asp:ListItem Text="<%$Resources:Paging.100%>" Value="100" ></asp:ListItem>
            </asp:DropDownList>
            <span class="font10px blue_text"><asp:LinkButton ID="lnkChangePage" 
                  runat="server" Text="Next Page" OnClick="lnkChangePage_Click"></asp:LinkButton></span>
              &nbsp; <img src="<%$Resources:Image.arrow_blue3%>" runat="server" alt="" ID="imgChangePage"/>--%>
          </td>
          </tr>
      	</table>
    
        </td>
        <td width="13" class="view_right_bg"><img src="/images/spacer.gif" alt="" /></td>
      </tr>
    	</table>
         <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20"><img id="Img5" src="<%$Resources:Image.view_3%>" runat="server" alt="" /></td>
        <td class="view_3_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="20"><img id="Img6" src="<%$Resources:Image.view_4%>" runat="server" alt="" /></td>
      </tr>
    	</table>
      </div>
    <asp:Repeater ID="propsRepeater" runat="server">
        <ItemTemplate>
            <a href='<%# ResolveUrl("~/") + "Mobile/Prop.aspx?id=" + Eval( "PRL").ToString() %>'>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="20">
                            <img id="Img1" src="<%$Resources:Image.view_1%>" runat="server" alt="" />
                        </td>
                        <td class="view_1_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                        <td width="20" colspan="2">
                            <img id="Img2" src="<%$Resources:Image.view_2%>" runat="server" alt="" />
                        </td>
                    </tr>
                    <tr>
                        <td width="20" class="view_left_bg">
                            <img src="/images/spacer.gif" alt="">
                        </td>
                        <td>
                            <table style="table-layout: fixed; background-color: White;" width="100%" border="0"
                                cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="100px" style="text-align: left" valign="top">
                                        <asp:Image Width="100px" runat="server" ID="imgSrc" ImageUrl='<%#ResolveUrl("~/") + "ImageViewer.aspx?ID=" + Eval("TopImageId") %>' />
                                    </td>
                                    <td valign="top" width="70%" class="fontbold blue_text">
                                        <div class="prop_desc_padd">
                                            <div class="font13px">
                                                <%#  GetLocalizedString(Container.DataItem, "Qadaa")%>,
                                                <%# GetLocalizedString(Container.DataItem, "District")%>
                                                /
                                                <%# GetLocalizedString(Container.DataItem,"PropertyType") %>
                                                <%# GetLocalizedString(Container.DataItem,"PropertyFor") %></div>
                                            <div>
                                                <img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
                                            <div class="font11px">
                                                $
                                                <%# Eval("PropertyFor").ToString().ToLower().Contains("rent") && Eval("PropertyFor").ToString().ToLower().Contains("sale") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice")) + " / " + string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) + "  -  " + Eval("Size") + "m2"%>
                                            </div>
                                            <div class="font11px">
                                              
                                                <%# GetAdditionalInfo(Eval("Web_GuideDescription").ToString())%>
                                              
                                            </div>
                                            <div>
                                                <img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
                                        </div>
                                    </td>
                                    <td valign="middle" width="10%">
                                        <div class="prop_desc_padd">
                                            <asp:Image ImageUrl="<%$Resources:Image.arrow%>" runat="server" /></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="15" class="view_right_bg" style="background-position: right">
                            <img src="/images/spacer.gif" alt="">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td width="20">
                            <img id="Img3" src="<%$Resources:Image.view_3%>" runat="server" alt="" />
                        </td>
                        <td class="view_3_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                        <td width="20" colspan="2">
                            <img id="Img4" src="<%$Resources:Image.view_4%>" runat="server" alt="" />
                        </td>
                    </tr>
                </table>
            </a>
        </ItemTemplate>
    </asp:Repeater>
    <table border="0" style="background-color: White" width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td style="width: 30%; text-align: left; padding-left: ">
                <asp:ImageButton ImageUrl="<%$ Resources:Image.Previous %>" Height="23px" runat="server"
                    OnClick="btnPrev_Click" ID="btnPrev" />
            </td>
            <td style="width: 40%;">
                <%--<asp:DataList ID="dtPaging" runat="server" OnItemCommand="dlPaging_ItemCommand" ShowHeader="False"
                    ShowFooter="False" RepeatDirection="Horizontal" RepeatColumns="20" OnItemDataBound="dlPaging_ItemDataBound"
                    Style="direction: ltr" meta:resourcekey="dtPagingResource1">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkbtnPaging" runat="server" CssClass="paging" CommandArgument='<%# Eval("PageIndex") %>'
                            CommandName="lnkbtnPaging" Text='<%# Eval("PageText") %>' meta:resourcekey="lnkbtnPagingResource1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>--%>
            </td>
            <td style="width: 30%; text-align: right">
                <asp:ImageButton ImageUrl="<%$ Resources:Image.Next %>" ID="btnNext" Height="23px"
                    runat="server" OnClick="btnNext_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
