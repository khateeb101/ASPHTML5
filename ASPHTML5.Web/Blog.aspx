<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="ASPHTML5.Web.Blog"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Contact Us" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>
<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
   <iframe id="BlogFrame" src="http://bestpropertieslebanon.blogspot.com/"  width="130%" height="1000px" style="float:left; display:inline;margin-left:auto;margin-right:auto;zoom: 1;-moz-transform: scale(0.81);-moz-transform-origin: 0 0;-o-transform: scale(0.81);-o-transform-origin: 0 0;-webkit-transform: scale(0.81);-webkit-transform-origin: 0 0;" ></iframe>
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