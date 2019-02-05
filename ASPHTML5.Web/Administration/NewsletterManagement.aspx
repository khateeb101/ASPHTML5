<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsletterManagement.aspx.cs" Inherits="ASPHTML5.Web.NewsletterManagement"  MasterPageFile="~/Administration/Administration.Master"%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<script>    id = "newsletterMgt"</script>
<script>    id2 = ""</script>
<div class="font14px">Newsletter Management</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
<div class="font14px middle_padd">
<asp:UpdatePanel ID="pnUpdateLKUP" runat="server" >
<ContentTemplate>
<table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin: 0;padding: 0;">
<tr>
    <td>
     <asp:GridView ID="gvLKUP" runat="server" AutoGenerateColumns="False" 
                                    Width="100%" AllowPaging="true" 
            AllowSorting="true" onpageindexchanging="gvLKUP_PageIndexChanging" PageSize="50">
        <Columns>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="IsSubscribed" HeaderText="Subscribed" SortExpression="IsSubscribed"></asp:BoundField>
            <asp:TemplateField>
                <ItemTemplate>
                <asp:Button runat="server" ID="btnActivateEmail" Text='<%# Convert.ToBoolean(Eval("IsSubscribed"))? "Unsubscribe" : "Subscribe"%>' 
                CommandName="SubscribeForm" CommandArgument='<%#Eval("Email")%>' OnCommand="btnActivateEmail_Click"/>
                </ItemTemplate>
                <ItemStyle Width="20px" Height="20" HorizontalAlign="Center"/>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>No entries selected</EmptyDataTemplate>
    </asp:GridView>
    </td>
</tr>
</table>
</ContentTemplate>
</asp:UpdatePanel>
</div>
</asp:Content>