<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobOpportunityManagement.aspx.cs" Inherits="ASPHTML5.Web.JobOpportunityManagement"  MasterPageFile="~/Administration/Administration.Master"%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">

    <script>    id = "jobopportunityMgt"</script>
<script>id2 = ""</script>
<div class="font14px">Job Opportunity Management</div>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="cpMain">
    <div class="font14px middle_padd">
<asp:UpdatePanel ID="pnUpdateLKUP" runat="server" >
<ContentTemplate>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<asp:Panel ID="pnJob" runat="server" Visible="false">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td>Title</td><td><asp:TextBox ID="txtTitle" runat="server" CssClass="boxadmin"></asp:TextBox></td></tr>
    <tr>
        <td>
            &nbsp;&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
<tr><td>Description</td><td><asp:TextBox ID="txtDescription" runat="server" CssClass="boxarea" TextMode="MultiLine"></asp:TextBox></td></tr>
<tr><td>French Title</td><td><asp:TextBox ID="txtFrenchTitle" runat="server" CssClass="boxadmin"></asp:TextBox></td></tr>
    <tr>
        <td>
            &nbsp;&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
<tr><td>French Description</td><td><asp:TextBox ID="txtFrenchDescription" runat="server" CssClass="boxarea" TextMode="MultiLine"></asp:TextBox></td></tr>
<tr><td>Title</td><td><asp:TextBox ID="txtArabicTitle"  runat="server" CssClass="boxadmin"></asp:TextBox></td></tr>
    <tr>
        <td>
            &nbsp;&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
<tr><td>Description</td><td><asp:TextBox ID="txtArabicDesciption" runat="server" CssClass="boxarea" TextMode="MultiLine"></asp:TextBox></td></tr>
<tr>
<td colspan="2" align="right">
   <asp:Button ID="btnSave" runat="server" Text="Save" 
       onclick="btnSave_Click" />
   &nbsp;
   <asp:Button ID="btnCancel" CausesValidation="false" runat="server" Text="Cancel" CssClass="button" 
       onclick="btnCancel_Click" />
</td>
</tr>
    <tr>
        <td align="right" colspan="2">
            &nbsp;&nbsp;</td>
    </tr>
</table>
</asp:Panel>
</td>
</tr>
<tr>
<td>
    <asp:Button ID="btnAdd" runat="server" Text="Add new Job Opportunity" 
        CssClass="button" Width="181px" onclick="btnAdd_Click"/></td>
</tr>
    <tr>
        <td>
            &nbsp;&nbsp;</td>
    </tr>
<tr>
    <td>
     <asp:GridView ID="gvLKUP" runat="server" AutoGenerateColumns="False" Width="100%" AllowSorting="true">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false"></asp:BoundField>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
            <asp:BoundField DataField="ModifiedDate" HeaderText="Modified Date" SortExpression="ModifiedDate" DataFormatString="{0: dd-MMM-yyyy}"></asp:BoundField>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:Button ID="btnView" runat="server" CommandName="ViewCV"
                        CommandArgument='<%#Eval("Id")%>' OnCommand="btnViewCV_Click" Text="View CV"/>
                </ItemTemplate>
                <ItemStyle Width="20px" Height="20" HorizontalAlign="Center"/>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="../images/Edit.GIF" CommandName="EditLKUP"
                    CommandArgument='<%#Eval("Id")%>' OnCommand="btnEdit_Click"/>
                </ItemTemplate>
                <ItemStyle Width="20px" Height="20" HorizontalAlign="Center"/>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="../images/delete.png" CommandName="DeleteLKUP"
                        OnClientClick="javascript:return confirm('Are you sure you want to delete this entry?');" 
                        CommandArgument='<%#Eval("Id")%>' OnCommand="btnDelete_Click"/>
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