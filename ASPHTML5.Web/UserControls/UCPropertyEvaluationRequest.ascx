<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCPropertyEvaluationRequest.ascx.cs" Inherits="ASPHTML5.Web.UserControls.UCPropertyEvaluationRequest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<div>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="20"><img id="Img1" src="<%$Resources:Image.view_1%>" runat="server" alt="" /></td>
        <td class="view_1_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="20"><img id="Img2" src="<%$Resources:Image.view_2%>" runat="server" alt="" /></td>
      </tr>
    	</table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="13" class="view_left_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td class="view_middle">
        <div class="font13px fontbold"><asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.Call%>" /> <span class="blue_text"><asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.Number%>" /></span> <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:Text.FurtherInformation%>" /> <span class="blue_text2"><asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.PropertyWorth%>" /></span> </div>
        <div class="float_right"><a href="EvaluationRequest/Eval"><img id="Img3" src="<%$Resources:Image.arrange%>" width="128" height="19" runat="server" alt="" border="0" /></a></div>        
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
</body>
</html>