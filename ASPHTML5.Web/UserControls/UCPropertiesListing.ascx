<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCPropertiesListing.ascx.cs" Inherits="ASPHTML5.Web.UserControls.UCPropertiesListing" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="/fancybox/source/jquery.fancybox.js?v=2.0.6"></script>
    <link rel="stylesheet" type="text/css" href="/fancybox/source/jquery.fancybox.css?v=2.0.6"
        media="screen" />
<script type="text/javascript">
    function arrangePopup(id) {
        var prl = id.split("_")[1];
        $.fancybox.open({
            href: '/property-view.aspx?PRL=' + prl,
            type: 'iframe',
            padding: 8
        });
    }    
</script>
<asp:UpdateProgress AssociatedUpdatePanelID="UpdatePanel1" ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <div>
                            <asp:Image runat="server" ID="imgLoading" ImageUrl="~/images/loading.gif" />
                            Please Wait...
                        </div>
                    </ProgressTemplate>
                </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
    <ContentTemplate>
<div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20"><img src="<%$Resources:Image.view_1%>" runat="server" alt="" /></td>
        <td class="view_1_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="20"><img src="<%$Resources:Image.view_2%>" runat="server" alt="" /></td>
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
                    runat="server" Text="Label"></asp:Label> 
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
                    AutoPostBack="True" OnSelectedIndexChanged="ddlSorting_SelectedIndexChanged" >
                    <asp:ListItem Text="<%$Resources:Sort.New%>" Value="2" ></asp:ListItem>
            <asp:ListItem Text="<%$Resources:Sort.Price%>" Value="1" ></asp:ListItem>            
            </asp:DropDownList>
              <asp:DropDownList ID="ddlPaging" runat="server" CssClass="select" 
                    OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged" AutoPostBack="True"  >
            <asp:ListItem Text="<%$Resources:Paging.10%>" Value="10" ></asp:ListItem>
            <asp:ListItem Text="<%$Resources:Paging.30%>" Value="30" Selected="True"></asp:ListItem>
            <asp:ListItem Text="<%$Resources:Paging.100%>" Value="100" ></asp:ListItem>
            </asp:DropDownList>
            <span class="font10px blue_text"><asp:LinkButton ID="lnkChangePage" 
                  runat="server" Text="Next Page" OnClick="lnkChangePage_Click"></asp:LinkButton></span>
              &nbsp; <img src="<%$Resources:Image.arrow_blue3%>" runat="server" alt="" ID="imgChangePage"/>
          </td>
          </tr>
      	</table>
    
        </td>
        <td width="13" class="view_right_bg"><img src="/images/spacer.gif" alt="" /></td>
      </tr>
    	</table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20"><img src="<%$Resources:Image.view_3%>" runat="server" alt="" /></td>
        <td class="view_3_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="20"><img src="<%$Resources:Image.view_4%>" runat="server" alt="" /></td>
      </tr>
    	</table>
      </div>
      <div><img src="/images/spacer.gif" alt="" width="1" height="25" /></div>
      <div class="buy_prop_padd">
      <asp:DataList ID="dtList" runat="server" ShowFooter="False" ShowHeader="False" 
              Width="100%">
        <ItemTemplate>
        <asp:HiddenField runat="server" Value='<%# Eval("Neighborhood") %>' ID="hdnNeigh" /> 
        <asp:Panel ID="divProperty" runat="server">               
        <table class="each_prop_bg" width="100%" border="0" cellspacing="0" cellpadding="20">
        <tr>
        <td valign="top" width="171">        
        <div class="record_number_bg"><%# DataBinder.Eval(Container.DataItem, "ImagesCount").ToString() == "0" ? "" : DataBinder.Eval(Container.DataItem, "ImagesCount")%></div>
        <a href='<%# ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" +  (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
       "-" + GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon%>'><asp:Image runat="server" ID="imgSrc" 
                ImageUrl='<%# "~/ImageViewer.aspx?ID=" + DataBinder.Eval(Container.DataItem, "TopImageId") %>' 
                Width="171px" Height="116px" border="0" ToolTip="Sodeco Gestion" /></a>
        <div class="prop_desc">
        <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.Reference%>" /> : <%# DataBinder.Eval(Container.DataItem, "PRL")%><br />
        <%--<%# DataBinder.Eval(Container.DataItem, "TotalBedrooms")%> <asp:Literal ID="Literal2" runat="server" Text='<%# GetLabelText(Container.DataItem) %>' /> --%>
        <%# int.Parse(Eval("TotalBedrooms").ToString()) + int.Parse(Eval("MasterBedRooms").ToString()) + int.Parse(Eval("FamilyRoom ").ToString())%> <asp:Literal ID="Literal1" runat="server" Text='<%$Resources:DataList.bedrooms%>' /> 
        <br />
        <asp:Literal ID="Literal8" runat="server" Text='<%# GetLocalizedString(Container.DataItem,"PropertyType") %>' /> 
        <br /><asp:Literal ID="Literal9" runat="server" Text='<%# GetLocalizedString(Container.DataItem,"PropertyFor") %>' />
        <br /><asp:Literal ID="Literal5" runat="server" Text='<%# Eval("Size") %>' /> m2
        </div>
        </td>
        <td valign="top" class="fontbold blue_text">
        <div class="prop_desc_padd">
        <div class="font13px"><%#  GetLocalizedString(Container.DataItem, "Qadaa")%>, <%# GetLocalizedString(Container.DataItem, "District")%> / <%# GetLocalizedString(Container.DataItem,"PropertyType") %> <%# GetLocalizedString(Container.DataItem,"PropertyFor") %></div>
        <div><img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
        <div class="font11px">$ <%# DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") && DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("sale") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice")) + " / " + string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:###,###,##0}", DataBinder.Eval(Container.DataItem, "SalePrice")))%> </div>
        <div><img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
        <div class="font10px"><asp:Literal ID="Literal2" runat="server" Text='<%# GetAdditionalInfo(Container.DataItem) %>' /><br />
            <br /><u>
            <a href='<%# ResolveUrl("~/") + CurrentCultureString + "/" + Eval( "PRL").ToString() + "/" + (DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("rent") || DataBinder.Eval(Container.DataItem, "PropertyFor").ToString().ToLower().Contains("short") ? string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "RentPrice")) : string.Format("{0:########0}", DataBinder.Eval(Container.DataItem, "SalePrice"))) +
        "-" +GetLocalizedString(Container.DataItem,"PropertyType").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem,"PropertyFor").Replace("/","-").Replace(" ","-") + "-" + 
        GetLocalizedString(Container.DataItem, "District").Replace("/","-").Replace(" ","-") + "/" + Resources.Links.Lebanon %>'>
            <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Search.ReadMore%>" /></a>  </u></div>
        <div><img src="/images/spacer.gif" alt="" width="1" height="13" /></div>
        <div><a href="javascript:;" id='<%# "btnArrange_" + Eval("PRL") %>'  onclick="arrangePopup(this.id)"><img src="<%$Resources:Image.arrange2%>" alt="" border="0" runat="server"/></a></div>
        <%--'<%# "/Feedback.aspx?PRL=" + DataBinder.Eval(Container.DataItem, "PRL") %>'--%>
        </div>
        </td>
      </tr>
    	</table>
			<div><img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
            </asp:Panel>
			</ItemTemplate>
                <SeparatorTemplate>
                </SeparatorTemplate>
            </asp:DataList> 
      <div class="paging_float_right">
      <asp:DataList ID="dtPaging" runat="server" OnItemCommand="dlPaging_ItemCommand" 
              ShowHeader="False" ShowFooter="False" RepeatDirection="Horizontal" RepeatColumns="20" 
              onitemdatabound="dlPaging_ItemDataBound" style="direction: ltr"
              meta:resourcekey="dtPagingResource1"> 
        <ItemTemplate> 
          <asp:LinkButton ID="lnkbtnPaging" runat="server" CssClass="paging" 
                CommandArgument='<%# Eval("PageIndex") %>' CommandName="lnkbtnPaging" 
                Text='<%# Eval("PageText") %>' meta:resourcekey="lnkbtnPagingResource1"></asp:LinkButton> 
        </ItemTemplate> 
        </asp:DataList> 
      </div>
      <div class="clear_both"><img src="/images/spacer.gif" alt="" width="1" height="15" /></div>
      </div>
</ContentTemplate>
</asp:UpdatePanel>      
