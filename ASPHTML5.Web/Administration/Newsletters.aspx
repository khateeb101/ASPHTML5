<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Administration.Master" AutoEventWireup="true" CodeBehind="Newsletters.aspx.cs" Inherits="ASPHTML5.Web.Newsletters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
<script>    id = "Newsletters"</script>
<script>    id2 = ""</script>
<div class="font14px">Newsletters</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" runat="server">
    <asp:Button Text="Add Newsletter" ID="btnAdd" runat="server" 
        onclick="btnAdd_Click" />
        <br /><br /><br />
<asp:GridView ID="grdNewsletters" runat="server" AutoGenerateColumns="False" 
        Width="100%" AllowSorting="True" DataSourceID="NewslettersObjectDataSource">
        <Columns>       
        <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="../images/delete.png" CommandName="DeleteLKUP"
                        OnClientClick="javascript:return confirm('Are you sure you want to delete this entry?');" 
                        CommandArgument='<%#Eval("Id")%>' OnCommand="btnDelete_Click"/>
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
            <asp:BoundField DataField="Name" HeaderText="Title" SortExpression="Name"></asp:BoundField>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
            <img src='../ImageViewer.aspx?newsletterid=<%#Eval("ID")%>' height="50" alt="" /></ItemTemplate> 
            </asp:TemplateField>
            <asp:BoundField DataField="Show_website" HeaderText="Show on website" SortExpression="Show_website"></asp:BoundField>
        </Columns>
        <EmptyDataTemplate>No entries selected</EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource ID="NewslettersObjectDataSource" runat="server" 
        SelectMethod="SelectAllNewslettersTable" 
        TypeName="ASPHTML5.BAL.Newsletter"></asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpBottomPanel" runat="server">
</asp:Content>
