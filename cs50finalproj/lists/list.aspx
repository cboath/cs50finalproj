<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Frontend.Master" CodeBehind="list.aspx.vb" Inherits="cs50finalproj.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="left_side">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
                </td>
                <td>
                    <asp:Label ID="item_brandLabel" runat="server" 
                        Text='<%# Eval("item_brand") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="item_nameTextBox" runat="server" 
                        Text='<%# Bind("item_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="item_brandTextBox" runat="server" 
                        Text='<%# Bind("item_brand") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="item_nameTextBox" runat="server" 
                        Text='<%# Bind("item_name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="item_brandTextBox" runat="server" 
                        Text='<%# Bind("item_brand") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
                </td>
                <td>
                    <asp:Label ID="item_brandLabel" runat="server" 
                        Text='<%# Eval("item_brand") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" 
                            style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    Item</th>
                                <th runat="server">
                                    Type</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
                </td>
                <td>
                    <asp:Label ID="item_brandLabel" runat="server" 
                        Text='<%# Eval("item_brand") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
    SelectCommand="items_list" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</div>
</asp:Content>
