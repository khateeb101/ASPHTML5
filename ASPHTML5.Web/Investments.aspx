<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Investments.aspx.cs" Inherits="ASPHTML5.Web.Investments"
    MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Rent" Culture="auto"
    meta:resourcekey="PageResource1" UICulture="auto" %>

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
    <script>        id = "investments"</script>
    <script>        id2 = ""</script>
    <script>
        $(function () {
            $("#accordion").accordion({
                autoHeight: false               
            });
        });
    </script>
    <%--<script language="JavaScript" src="/Scripts/accordian.js" type="text/javascript"></script>--%>
    <%--<div class="font14px">
        <div style="text-transform: uppercase;">
            <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.HeaderTitle%>" /></div>
        <br />
        <br style="line-height: 4px" />
        <span class="font12px">
            <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.HeaderContent%>" /></span>
    </div>--%>
    <meta id="Meta1" name='description' runat="server" content='<%$ Resources:Meta.Desc %>' />
    <meta id="Meta2" name='keywords' runat="server" content='<%$ Resources:Meta.Keywords %>' />
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
<h1 class="seo_title"><asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Text.Header%>" /></h1>
<br />
    <asp:Panel ID="pnlVisible" runat="server" HorizontalAlign="Left">
        <div id="accordion" style="width:550px; text-align:left" >
            <h3 class="accordionButton">
                <a href="#" style="text-decoration: none; color:White; border:0">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>                           
                            <td width="1" class="bg_white">
                            </td>
                            <td class="main_color_bg hyperlink_white">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="3">
                                        </td>
                                        <td class="font16px fontbold">
                                            <asp:Literal Text="<%$ Resources:accordion.title1 %>" runat="server" />
                                        </td>
                                        <td class="font11px" align="right">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td width="24">
                                <img src="/images/spacer.gif" width="24" height="35" alt="" border="0" />
                            </td>
                        </tr>
                    </table>
                </a>
            </h3>
            <div>
                <p style="text-align:justify; margin-right:5px;">
                    <asp:Literal Text="<%$ Resources:accordion.text1 %>" runat="server" />                   
                </p>
            </div>
            <h3 class="accordionButton">
                <a href="#"  style="text-decoration: none; color:White; border:0"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>                       
                        <td width="1" class="bg_white">
                        </td>
                        <td class="main_color_bg hyperlink_white">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="3">
                                    </td>
                                    <td class="font16px fontbold">
                                        <asp:Literal Text="<%$ Resources:accordion.title2 %>" runat="server" />  
                                    </td>
                                    <td class="font11px" align="right">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="24">
                            <img src="/images/spacer.gif" width="24" height="35" alt="" border="0" />
                        </td>
                    </tr>
                </table></a></h3>
            <div>
            <p style="text-align:justify; margin-right:5px;">
                <asp:Literal Text="<%$ Resources:accordion.text2 %>" runat="server" />                
             </p>
            </div>
            <h3 class="accordionButton">
                <a href="#"  style="text-decoration: none; color:White; border:0"> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>                       
                        <td width="1" class="bg_white">
                        </td>
                        <td class="main_color_bg hyperlink_white">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="3">
                                    </td>
                                    <td class="font16px fontbold">
                                        <asp:Literal Text="<%$ Resources:accordion.title3 %>" runat="server" />
                                    </td>
                                    <td class="font11px" align="right">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="24">
                            <img src="/images/spacer.gif" width="24" height="35" alt="" border="0" />
                        </td>
                    </tr>
                </table></a></h3>
            <div>
            <p style="text-align:justify; margin-right:5px;">
                <asp:Literal Text="<%$ Resources:accordion.text3 %>" runat="server" />  
                </p>             
            </div>
            <h3 class="accordionButton">
                <a href="#"  style="text-decoration: none; color:White; border:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>                        
                        <td width="1" class="bg_white">
                        </td>
                        <td class="main_color_bg hyperlink_white">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="3">
                                    </td>
                                    <td class="font16px fontbold">
                                        <asp:Literal Text="<%$ Resources:accordion.title4 %>" runat="server" />
                                    </td>
                                    <td class="font11px" align="right">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="24">
                            <img src="/images/spacer.gif" width="24" height="35" alt="" border="0" />
                        </td>
                    </tr>
                </table></a></h3>
            <div>
            <p style="text-align:justify; margin-right:5px;">
                <asp:Literal Text="<%$ Resources:accordion.text4 %>" runat="server" />                
            </p>
            </div>
            <h3 class="accordionButton">
                <a href="#"  style="text-decoration: none; color:White; border:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>                        
                        <td width="1" class="bg_white">
                        </td>
                        <td class="main_color_bg hyperlink_white">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="3">
                                    </td>
                                    <td class="font16px fontbold">
                                        <asp:Literal Text="<%$ Resources:accordion.title5 %>" runat="server" />
                                    </td>
                                    <td class="font11px" align="right">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="24">
                            <img src="/images/spacer.gif" width="24" height="35" alt="" border="0" />
                        </td>
                    </tr>
                </table></a></h3>
            <div>
            <p style="text-align:justify; margin-right:5px;">
                <asp:Literal Text="<%$ Resources:accordion.text5 %>" runat="server" />                
            </p>                 
            </div>
            <h3 class="accordionButton">
                <a href="#"  style="text-decoration: none; color:White; border:0"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>                        
                        <td width="1" class="bg_white">
                        </td>
                        <td class="main_color_bg hyperlink_white">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="3">
                                    </td>
                                    <td class="font16px fontbold">
                                        <asp:Literal Text="<%$ Resources:accordion.title6 %>" runat="server" />
                                    </td>
                                    <td class="font11px" align="right">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="24">
                            <img src="/images/spacer.gif" width="24" height="35" alt="" border="0" />
                        </td>
                    </tr>
                </table></a></h3>
            <div>
            <p style="text-align:justify; margin-right:5px;">
                <asp:Literal Text="<%$ Resources:accordion.text6 %>" runat="server" /> <br />     
                <a href="http://www.actea-conseil.fr/" target="_blank">www.actea-conseil.fr</a>          
            </p>  
            </div>
        </div>        
    </asp:Panel>
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
</asp:Content>
