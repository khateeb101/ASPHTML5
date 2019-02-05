<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MobileFooter.ascx.cs"
    Inherits="ASPHTML5.Web.Mobile.UserControls.MobileFooter" %>
<div class="footer" style="text-align: right;">
      <asp:LinkButton ID="LinkButton2" runat="server" OnClick="btnSearch_Click">
        <div style="width: 32%; float: left; height:70px; background-color: #02507f;">
            <div style="width: 100%; padding-top: 5px" align="center">
                <asp:Image ID="Image1" ImageUrl="~/images/search.png" Height="30px" runat="server" />
            </div>
            <asp:Label ID="lblSearch" Style="padding-top: 5px; width: 100%; height: 30px; vertical-align: bottom;
                text-align: center; color: White" Width="50%" Text='<%$Resources:Menu.Search %>'
                runat="server" />
        </div>
    </asp:LinkButton>
    <div style="width: 1.5%; float: left;">
        <asp:Image ID="imgSep" ImageUrl="~/images/menu_item_sep.gif" Height="70px" Width="100%"
            runat="server" />
    </div>
    <asp:HyperLink ID="LinkButton1" NavigateUrl="~/index" runat="server">
        <div style="width: 32%; float: left">
            <div style="width: 100%; padding-top: 5px" align="center">
                <asp:Image ID="Image2" ImageUrl="~/images/world.png" Height="30px" runat="server" />
            </div>
            <asp:Label ID="Label1" Style="padding-top: 5px; width: 100%; height: 30px; vertical-align: middle;
                text-align: center; color: White" Width="50%" Text='<%$Resources:Menu.Desktop%>'
                runat="server" />
        </div>
    </asp:HyperLink>
     <div style="width: 1.5%; float: left;">
        <asp:Image ID="Image3" ImageUrl="~/images/menu_item_sep.gif" Height="70px" Width="100%"
            runat="server" />
    </div>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/mobile/contact.aspx" runat="server">
        <div style="width: 32%; float: left">
            <div style="width: 100%; padding-top: 5px" align="center">
                <asp:Image ID="Image4" ImageUrl="~/images/contact.png" Height="30px" runat="server" />
            </div>
            <asp:Label ID="Label2" Style="padding-top: 5px; width: 100%; height: 30px; vertical-align: middle;
                text-align: center; color: White" Width="50%" Text='<%$Resources:Menu.Contact%>'
                runat="server" />
        </div>
    </asp:HyperLink>   
</div>
