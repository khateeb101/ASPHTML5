<%@ Page Title="" Language="C#" MasterPageFile="~/Mobile/Mobile.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ASPHTML5.Web.Mobile.Search" %>
<%@ Register src="~/Mobile/UserControls/MobileSearch.ascx" tagname="MSearch" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="width:100%; border:0; background-color:White;">
<div style="width:98%; margin:0 auto; border:2px solid white; text-align:center">
<uc1:MSearch runat="server" />
</div>
</div>
</asp:Content>
