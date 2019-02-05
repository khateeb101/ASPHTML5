<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCJobListing.ascx.cs"
    Inherits="ASPHTML5.Web.UserControls.UCJobListing" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="20">
                            <img src="<%$Resources:Image.view_1%>" runat="server" alt="" />
                        </td>
                        <td class="view_1_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                        <td width="20">
                            <img src="<%$Resources:Image.view_2%>" runat="server" alt="" />
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="13" class="view_left_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                        <td class="view_middle">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <table border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="115" class="blue_text font10px">
                                                    <asp:Label ID="lblSearchResult" runat="server" Text="Label"></asp:Label>
                                                    <asp:Literal ID="Literal4" runat="server" Text="<%$Resources:Search.PropertiesFound%>" />
                                                </td>
                                                <td width="5">
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlSorting" runat="server" CssClass="select" AutoPostBack="True"
                                                        OnSelectedIndexChanged="ddlSorting_SelectedIndexChanged">
                                                        <asp:ListItem Text="<%$Resources:Sort.Old%>" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="<%$Resources:Sort.New%>" Value="2"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td width="4">
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="ddlPaging" runat="server" CssClass="select" OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged"
                                                        AutoPostBack="True">
                                                        <asp:ListItem Text="<%$Resources:Paging.10%>" Value="10"></asp:ListItem>
                                                        <asp:ListItem Text="<%$Resources:Paging.50%>" Value="50"></asp:ListItem>
                                                        <asp:ListItem Text="<%$Resources:Paging.100%>" Value="100"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="80" class="font10px blue_text">
                                        <asp:LinkButton ID="lnkChangePage" runat="server" Text="Next Page" OnClick="lnkChangePage_Click"></asp:LinkButton>
                                        &nbsp;
                                        <img src="<%$Resources:Image.arrow_blue3%>" runat="server" alt="" id="imgChangePage"
                                            runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="13" class="view_right_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                    </tr>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="20">
                            <img src="<%$Resources:Image.view_3%>" runat="server" alt="" />
                        </td>
                        <td class="view_3_bg">
                            <img src="/images/spacer.gif" alt="" />
                        </td>
                        <td width="20">
                            <img src="<%$Resources:Image.view_4%>" runat="server" alt="" />
                        </td>
                    </tr>
                </table>
                <div>
                    <img src="/images/spacer.gif" alt="" width="1" height="25" /></div>
                <div class="buy_prop_padd">
                    <asp:DataList ID="dtList" runat="server" ShowFooter="False" ShowHeader="False" Width="100%"
                        OnItemDataBound="dtList_ItemDataBound">
                        <ItemTemplate>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td valign="top" class="fontbold blue_text">
                                        <div class="prop_desc_padd">
                                            <div class="font13px">
                                                <asp:Label Text="" ID="lblTitle" runat="server" /></div>
                                            <div>
                                                <img src="/images/spacer.gif" alt="" width="1" height="5" /></div>
                                            <asp:HiddenField runat="server" ID="hdnID" Value='<%# Eval("Id") %>' />
                                            <div class="font10px">
                                                <asp:Literal ID="ltDate" runat="server" Text='<%# Convert.ToDateTime(Eval("ModifiedDate")).ToString("dd-MMM-yyyy")%>' />
                                                <br />
                                                <asp:Label Text="" ID="lblDescription" runat="server" />
                                                <br />
                                                <a href='<%# "ApplyForJob?ID=" + Eval("Id") %>'>
                                                    <asp:Literal ID="ltReadMore" runat="server" Text="<%$Resources:Search.ReadMore%>" /></a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div>
                                <img src="/images/spacer.gif" alt="" width="1" height="20" /></div>
                        </ItemTemplate>
                        <SeparatorTemplate>
                        </SeparatorTemplate>
                    </asp:DataList>
                    <div class="paging_float_right">
                        <asp:DataList ID="dtPaging" runat="server" OnItemCommand="dlPaging_ItemCommand" ShowHeader="False"
                            ShowFooter="False" RepeatDirection="Horizontal" OnItemDataBound="dlPaging_ItemDataBound"
                            Style="direction: ltr" meta:resourcekey="dtPagingResource1">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbtnPaging" runat="server" CssClass="paging" CommandArgument='<%# Eval("PageIndex") %>'
                                    CommandName="lnkbtnPaging" Text='<%# Eval("PageText") %>' meta:resourcekey="lnkbtnPagingResource1"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                    <div class="clear_both">
                        <img src="/images/spacer.gif" alt="" width="1" height="15" /></div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</body>
</html>
