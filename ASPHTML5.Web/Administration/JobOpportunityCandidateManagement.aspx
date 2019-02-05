<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobOpportunityCandidateManagement.aspx.cs" Inherits="ASPHTML5.Web.JobOpportunityCandidateManagement"  MasterPageFile="~/Administration/Administration.Master"%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="cpHead">
<script>    id = "candidateMgt"</script>
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
     <asp:GridView ID="gvLKUP" runat="server" AutoGenerateColumns="False" 
                                    Width="100%" AllowPaging="true" AllowSorting="true">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="false"></asp:BoundField>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments"></asp:BoundField>
            <asp:BoundField DataField="ModifiedDate" HeaderText="Submitted Date" SortExpression="ModifiedDate" DataFormatString="{0: dd-MMM-yyyy}"></asp:BoundField>
            <asp:TemplateField HeaderText="CV">
                <ItemTemplate>
                    <asp:Button ID="btnView" runat="server" Text="View CV" CommandName="ViewCV"
                        CommandArgument='<%#Eval("Id")%>' OnCommand="btnView_Click"/>
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