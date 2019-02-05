<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PropertyDetails.aspx.cs"
    Inherits="ASPHTML5.Web.PropertyDetails" MasterPageFile="~/Common.Master"
    Title="Sodeco Gestion | Property Details" Culture="auto" meta:resourcekey="PageResource1"
    UICulture="auto" %>

<%@ Register Src="~/UserControls/UCPropertySearch.ascx" TagName="UC_PropertySearch"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCValuationRequest.ascx" TagName="UC_ValuationRequest"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCPropertiesListing.ascx" TagName="UC_PropertiesListing"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCRightHtml.ascx" TagName="UC_RightHtml" TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/UCPropertyEvaluationRequest.ascx" TagName="UC_PropertyEvaluationRequest"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
    <script>        id = ""</script>
    <script>        id2 = ""</script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="/fancybox/source/jquery.fancybox.js?v=2.0.6"></script>
    <link rel="stylesheet" type="text/css" href="/fancybox/source/jquery.fancybox.css?v=2.0.6"
        media="screen" />
    <div class="font14px">
        <div style="text-transform: uppercase;">
            <asp:Label runat="server" ID="lblPropertyType1"></asp:Label>
            <asp:Label runat="server" ID="lblPropertyFor"></asp:Label></div>
    </div>
    <script type="text/javascript">        var switchTo5x = true;</script>
    <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
    <script type="text/javascript">        stLight.options({ publisher: "ur-380ec50e-b841-94be-d334-11b73553afa0" }); </script>
    <asp:Literal Text="" ID="ltrScript" runat="server" />
    <asp:Literal Text="" ID="ltrScriptArrange" runat="server" />    
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <asp:UpdatePanel runat="server" ID="up1">
        <ContentTemplate>
            <asp:UpdateProgress AssociatedUpdatePanelID="up1" ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <div>
                        <asp:Image runat="server" ID="imgLoading" ImageUrl="~/images/loading.gif" />
                        Please Wait...<br />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <div>
                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <td valign="middle">
                            <%--<asp:ImageButton runat="server" ID="lnkPrevious" 
        ImageUrl="images/arrow_blue_left.gif" Border="0" onclick="lnkPrevious_Click" 
         />--%>
                        </td>
                        <td align="center">
                            <%--<asp:DataList ID="dtList" runat="server" ShowFooter="false" ShowHeader="False" Width="100%" RepeatDirection="Horizontal">
                                <ItemTemplate>--%>
                            <table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td align="center">
                                        <asp:Image ImageUrl="" ID="imgProp" Width="400px" runat="server" ClientIDMode="Static"
                                            Style="cursor: pointer" CssClass="lnkPropGallery" ToolTip="Sodeco Gestion"/><br />
                                        <br />
                                        <asp:HyperLink NavigateUrl="" ID="lnkPropGallery" Visible="false" Text="Click To View the SlideShow"
                                            runat="server" Style="cursor: pointer; text-decoration: underline; font-size: 12px;"
                                            CssClass="lnkPropGallery" />
                                        <%--<asp:Image runat="server" ID="imgSrc" ImageUrl='<%# "~/ImageViewer.aspx?big=tue&ID=" + DataBinder.Eval(Container.DataItem, "Id")%>' border="0" Width="400px"/>--%>
                                    </td>
                                </tr>
                            </table>
                            <%-- </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:DataList>--%>
                        </td>
                        <td valign="middle">
                            <%--<asp:ImageButton runat="server" ID="lnkNext" ImageUrl="images/arrow_blue_right.gif" Border="0" onclick="lnkNext_Click" />--%>
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div style="padding-left: 20px; padding-right: 20px">
        <br />
        <table width="100%" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td colspan="2" style="width: 95%">
                    <asp:Literal ID="Literal6" runat="server" /><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 15%">
                    <b>
                        <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.Reference%>" /></b>
                </td>
                <td width="80%">
                    <asp:Label ID="lblReference" runat="server" ClientIDMode="Static" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 15%">
                    <b>
                        <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.Location%>" /></b>
                </td>
                <td width="80%">
                    <asp:Label ID="lblLocation" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15%" colspan="2">
                    <b>
                        <asp:Label ID="lblPropertyType" runat="server" Text="Label"></asp:Label>
                        &nbsp;<asp:Literal ID="Literal2" runat="server" Text="<%$Resources:Text.ComposedOf%>" /></b>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Literal ID="litDetails" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="width: 15%">
                    <b>
                        <asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.Surface%>" /></b>
                </td>
                <td width="80%">
                    <asp:Label ID="lblSurface" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 15%">
                    <b>
                        <asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Text.Price%>" /></b>
                </td>
                <td width="80%">
                    <asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div>
                        <asp:HyperLink runat="server" ID="hlArrange" CssClass="arrange_text" onclick="arrangePopup()">
                           <%-- <img id="Img2" src="<%$Resources:Image.arrange2%>" alt="" border="0" runat="server" />--%>
                           <asp:literal text="<%$Resources:Text.arrange%>" runat="server" />
                        </asp:HyperLink></div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <span class='st_facebook_large' displaytext='Facebook'></span><span class='st_twitter_large'
                        displaytext='Tweet'></span><span class='st_linkedin_large' displaytext='LinkedIn'>
                    </span><span class='st_pinterest_large' displaytext='Pinterest'></span><span class='st_email_large'
                        displaytext='Email'></span>
                </td>
            </tr>
        </table>
    </div>
    <uc1:UC_PropertyEvaluationRequest ID="UC_PropertyEvaluationRequest1" runat="server" />
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpBottomPanel">
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
    <uc1:UC_PropertySearch ID="UC_PropertySearch1" runat="server" />
    <div>
        <img src="/images/spacer.gif" alt="" width="1" height="10" /></div>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="cpMiddleRightPanel">
    <uc1:UC_ValuationRequest ID="UC_ValuationRequest1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
    <div class="pad_col_right">
        <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
    </div>
    <asp:Literal ID="ltBuy" Visible="false" runat="server" Text="<script>id = 'buy';</script>" />
    <asp:Literal ID="ltRent" Visible="false" runat="server" Text="<script>id = 'rent';</script>" />
</asp:Content>
