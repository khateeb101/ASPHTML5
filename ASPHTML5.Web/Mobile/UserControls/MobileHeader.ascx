<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MobileHeader.ascx.cs"
    Inherits="ASPHTML5.Web.Mobile.UserControls.MobileHeader" %>
<div style="width: 100%;height:70px; background-color: #02507f;">
    <asp:LinkButton ID="lnkBuy" runat="server" OnClick="btnBuy_Click">
        <div style="width: 32%; float: left; height:70px;background-color: #02507f;">
            <div style="width: 100%; padding-top: 5px; height:30px" align="center">
                <asp:Image ImageUrl="~/images/buy.png" Height="30px" runat="server" />
            </div>
            <asp:Label ID="lblBuy" Style="padding-top: 5px; width: 100%; height: 30px; vertical-align: middle;
                text-align: center; color: White" Width="50%" Text='<%$Resources:Menu.Buy %>'
                runat="server" />
        </div>
    </asp:LinkButton>
    <div style="width: 2%; float: left;">
        <asp:Image ID="imgSep" ImageUrl="~/images/menu_item_sep.gif" Height="70px" Width="100%"
            runat="server" />
    </div>
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="btnRent_Click">
        <div style="width: 32%; float: left; height:70px; background-color: #02507f;">
            <div style="width: 100%; padding-top: 5px" align="center">
                <asp:Image ID="Image2" ImageUrl="~/images/rent.png" Height="30px" runat="server" />
            </div>
            <asp:Label ID="lblRent" Style="padding-top: 5px; width: 100%; height: 30px; vertical-align: bottom;
                text-align: center; color: White" Width="50%" Text='<%$Resources:Menu.Rent %>'
                runat="server" />
        </div>
    </asp:LinkButton>
    <div style="width: 2%; float: left;">
        <asp:Image ID="Image1" ImageUrl="~/images/menu_item_sep.gif" Height="70px" Width="100%"
            runat="server" />
    </div>



       <asp:HyperLink ID="HyperLink2" NavigateUrl="~/mobile/default.aspx?hot=1" runat="server">
        <div style="width: 32%; float: left">
            <div style="width: 100%; padding-top: 5px" align="center">
                <asp:Image ID="Image4" ImageUrl="~/images/hot.png" Height="30px" runat="server" />
            </div>
            <asp:Label ID="lblHot" Style="padding-top: 5px; width: 100%; height: 30px; vertical-align: middle;
                text-align: center; color: White" Width="50%" Text='<%$Resources:Menu.HotProps %>'
                runat="server" />
        </div>
    </asp:HyperLink>
</div>
