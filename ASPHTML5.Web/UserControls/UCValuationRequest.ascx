<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCValuationRequest.ascx.cs" Inherits="ASPHTML5.Web.UserControls.UCValuationRequest" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<div class="pad_col_right">
    <asp:HyperLink NavigateUrl="~/mortages.aspx" runat="server" >
    <asp:image imageurl="~/images/blf.jpg" runat="server" />
    </asp:HyperLink>
</div>
<div class="services_padd_right" runat="server" visible="false">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16"><img src="<%$Resources:Image.blue_sec_1%>" runat="server" alt="" /></td>
        <td class="blue_sec_1_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="16"><img src="<%$Resources:Image.blue_sec_2%>" runat="server" alt="" /></td>
      </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="11" class="blue_sec_left_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td class="blue_sec_middle">
        <div class="font14px blue_text2 fontbold"><asp:Literal ID="Literal3" runat="server" Text="<%$Resources:Text.EvaluationRequest%>" /></div>
        <div class="font10px white_text"><asp:Literal ID="Literal1" runat="server" Text="<%$Resources:Text.PropertyWorth%>" /></div>
        <div><img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
        <table class="white_text font10px" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="50" valign="top"><asp:Literal ID="Literal2" runat="server" Text="<%$Resources:Text.Name%>" />&nbsp;<asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtName" Display="Dynamic"  ValidationGroup="Evaluate"
                  ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
          <td width="5"></td>
          <td valign="top">
          <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="<%$Resources:Image.input_left2%>" runat="server" alt="" /></td>
          <td class="input_bg2"><input type="text" class="box3" id="txtName" runat="server"/></td>
          <td><img src="<%$Resources:Image.input_right2%>" runat="server" alt="" /></td>
        </tr>
      	</table>
          </td>
        </tr>
      	</table>
        <div><img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
        <table class="white_text font10px" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="50" valign="top"><asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Text.Country%>" />&nbsp;<asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtCountry" 
                  ErrorMessage="*" ValidationGroup="Evaluate" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
          <td width="5"></td>
          <td valign="top">
          <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="<%$Resources:Image.input_left2%>" runat="server" alt="" /></td>
          <td class="input_bg2"><input type="text" class="box3" id="txtCountry" runat="server" /></td>
          <td><img src="<%$Resources:Image.input_right2%>" runat="server" alt="" /></td>
        </tr>
      	</table>
          </td>
        </tr>
      	</table>
        <div><img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
        <table class="white_text font10px" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="50" valign="top"><asp:Literal ID="Literal5" runat="server" Text="<%$Resources:Text.Telephone%>" />&nbsp;<asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator14" runat="server" Display="Dynamic" ControlToValidate="txtPhone"  ValidationGroup="Evaluate"
                  ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
          <td width="5"></td>
          <td valign="top">
          <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="<%$Resources:Image.input_left2%>" runat="server" alt="" /></td>
          <td class="input_bg2"><input type="text" class="box3" id="txtPhone" runat="server"/></td>
          <td><img src="<%$Resources:Image.input_right2%>" runat="server" alt="" /></td>
        </tr>
      	</table>
          </td>
        </tr>
      	</table>
        <div><img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
        <table class="white_text font10px" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="50" valign="top"><asp:Literal ID="Literal6" runat="server" Text="<%$Resources:Text.Email%>" />&nbsp;<asp:RequiredFieldValidator 
                  ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtEmail" ValidationGroup="Evaluate"
                  ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>  <asp:RegularExpressionValidator  ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                                    Display="Dynamic" ValidationGroup="Evaluate" ErrorMessage="<%$Resources:Error.IncorrectEmail%>" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
          <td width="5"></td>
          <td valign="top">
          <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="<%$Resources:Image.input_left2%>" runat="server" alt="" /></td>
          <td class="input_bg2"><input type="text" class="box3" id="txtEmail" runat="server"/></td>
          <td><img src="<%$Resources:Image.input_right2%>" runat="server" alt="" /></td>
        </tr>
      	</table>
          </td>
        </tr>
      	</table>
        <div><img src="/images/spacer.gif" alt="" width="1" height="9" /></div>
        <div class="textalignright">
            <asp:ImageButton runat="server" ID="imgRequest" 
                ImageUrl="<%$Resources:Image.subsribe2%>" border="0" 
                onclick="imgRequest_Click" ValidationGroup="Evaluate" /></div>
        <div><img src="/images/spacer.gif" alt="" width="1" height="2" /></div>
                
        </td>
        <td width="10" class="blue_sec_right_bg"><img src="/images/spacer.gif" alt="" /></td>
      </tr>
    	</table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="16"><img src="<%$Resources:Image.blue_sec_3%>" runat="server" alt="" /></td>
        <td class="blue_sec_3_bg"><img src="/images/spacer.gif" alt="" /></td>
        <td width="16"><img src="<%$Resources:Image.blue_sec_4%>" runat="server" alt="" /></td>
      </tr>
    	</table>
      </div>
</body>
</html>