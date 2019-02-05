<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteMap.aspx.cs" Inherits="ASPHTML5.Web.SiteMap" MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Site Map" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<%@ Register src="~/UserControls/UCRightHtml.ascx" tagname="UC_RightHtml" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<script>    id = ""</script>
<script>    id2 = "help"</script>
<div class="font14px"><div style="text-transform: uppercase;"><asp:Literal ID="Literal8" runat="server" Text="<%$Resources:Text.HeaderTitle%>" /></div></div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
<div class="font14px middle_padd">
<asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
<asp:Repeater runat="server" ID="menu" DataSourceID="SiteMapDataSource1" >
    <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server"
             NavigateUrl='<%# Eval("Url") %>' CssClass="font12px fontbold blue_text">
             <%# Eval("Title") %></asp:HyperLink><br />

            <asp:Repeater ID="Repeater1" runat="server"
             DataSource="<%# ((SiteMapNode)Container.DataItem).ChildNodes %>">
            <ItemTemplate>
            <table width="100%">
            <tr><td width="20px"></td>
            <td><asp:HyperLink ID="HyperLink2" runat="server"
                         NavigateUrl='<%# Eval("Url") %>' CssClass="arrow_blue_div" >
                         <%# Eval("Title") %></asp:HyperLink><br /></td>
            </tr>
            </table>
                </ItemTemplate>
            </asp:Repeater>
        </li>
    </ItemTemplate>
</asp:Repeater>
</div>
      <%-- <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" 
        StaticDisplayLevels="2" StaticEnableDefaultPopOutImage="False" >
        <LevelSubMenuStyles>
        <asp:SubMenuStyle CssClass="arrow_blue_div" />
        </LevelSubMenuStyles>
        <StaticMenuItemStyle CssClass="arrow_blue_div" ></StaticMenuItemStyle>
    <LevelSubMenuStyles>
       <asp:SubMenuStyle CssClass="font12px fontbold blue_text" />
            </LevelSubMenuStyles><DynamicItemTemplate>
                <%# Eval("Text") %>
            </DynamicItemTemplate>
        </asp:Menu>--%>
        </asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
<div class="pad_col_right">
      <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
      </div>
</asp:Content>
<%--<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="cpMapPanel">
<div>
<img id="Img1" src="<%$Resources:Image.Map%>" runat="server" alt="" /></div>
</asp:Content>--%>