<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResults.aspx.cs" Inherits="ASPHTML5.Web.SearchResults" MasterPageFile="~/Common.Master" Title="Sodeco Gestion | Search Results" %>
<%@ Register src="~/UserControls/UCPropertySearch.ascx" tagname="UC_PropertySearch" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCValuationRequest.ascx" tagname="UC_ValuationRequest" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCPropertiesListing.ascx" tagname="UC_PropertiesListing" tagprefix="uc1" %>
<%@ Register src="~/UserControls/UCRightHtml.ascx" tagname="UC_RightHtml" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<script>    id = ""</script>
<script>    id2 = "job_openings"</script>
<div class="font14px"><div style="text-transform: uppercase;">
<asp:Literal ID="ltrTitle" runat="server" Text="" />
</div>
</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
<uc1:UC_PropertiesListing ID="UC_PropertiesListing1" runat="server" />
      <div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20"><img id="Img2" src="<%$Resources:Image.view_1%>" runat="server" alt="" /></td>
        <td class="view_1_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="20"><img id="Img3" src="<%$Resources:Image.view_2%>" runat="server" alt="" /></td>
      </tr>
    	</table>
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="13" class="view_left_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td class="view_middle">
        <div class="font15px fontbold"><asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.Call%>" /> <span class="blue_text">+961 1 616 000</span> <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:Text.FurtherInformation%>" /> <span class="blue_text2"><asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.PropertyWorth%>" /></span> </div>
        <div class="float_right"><a href="EvaluationRequest/Eval"><img id="Img6" src="<%$Resources:Image.arrange%>" width="128" height="19" runat="server" alt="" border="0" /></a></div>        
        </td>
        <td width="13" class="view_right_bg"><img src="/images/spacer.gif" alt="" /></td>
      </tr>
    	</table>
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20"><img id="Img4" src="<%$Resources:Image.view_3%>" runat="server" alt="" /></td>
        <td class="view_3_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="20"><img id="Img5" src="<%$Resources:Image.view_4%>" runat="server" alt="" /></td>
      </tr>
    	</table>
      </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpBottomPanel">
<div><img src="../images/spacer.gif" alt="" width="1" height="10" /></div>
<uc1:UC_PropertySearch ID="UC_PropertySearch1" runat="server" />
<div><img src="../images/spacer.gif" alt="" width="1" height="10" /></div>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="cpMiddleRightPanel">
<uc1:UC_ValuationRequest ID="UC_ValuationRequest1" runat="server" />
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="cpUpperRightPanel">
<div class="pad_col_right">
      <uc1:UC_RightHtml runat="server" ID="UCRightHtml1" />
      </div>
</asp:Content>