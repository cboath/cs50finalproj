<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Frontend.Master" CodeBehind="current.aspx.vb" Inherits="cs50finalproj.current" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="curlist">
<table>
    <tr>
    <td>Schnucks - Maryland Heights</td>
    </tr>
    <tr>
    <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="item_name" HeaderText="Item" 
            SortExpression="item_name" />
        <asp:BoundField DataField="item_brand" HeaderText="Brand" 
            SortExpression="item_brand" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" 
            SortExpression="quantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
    SelectCommand="current_list_query5" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </td>
    </tr>
    </table>
    </div>
    <br />
    <div class="curlist">
<table>
    <tr>
    <td>Schnucks - Creve Coeur</td>
    </tr>
    <tr>
    <td>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="item_name" HeaderText="Item" 
            SortExpression="item_name" />
        <asp:BoundField DataField="item_brand" HeaderText="Brand" 
            SortExpression="item_brand" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" 
            SortExpression="quantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
    SelectCommand="current_list_query" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </td>
    </tr>
    </table>
    </div>
    <br />

    <div class="curlist">
<table>
    <tr>
    <td>Trader Joes - Creve Coeur</td>
    </tr>
    <tr>
    <td>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="item_name" HeaderText="Item" 
            SortExpression="item_name" />
        <asp:BoundField DataField="item_brand" HeaderText="Brand" 
            SortExpression="item_brand" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" 
            SortExpression="quantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
    SelectCommand="current_list_query" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </td>
    </tr>
    </table>
    </div>
    <br />

    <div class="curlist">
<table>
    <tr>
    <td>Costco - Ballwin</td>
    </tr>
    <tr>
    <td>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="item_name" HeaderText="Item" 
            SortExpression="item_name" />
        <asp:BoundField DataField="item_brand" HeaderText="Brand" 
            SortExpression="item_brand" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" 
            SortExpression="quantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
    SelectCommand="current_list_query" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </td>
    </tr>
    </table>
    </div>
    <br />

    <div class="curlist">
<table>
    <tr>
    <td>Walgreens - Maryland Heights</td>
    </tr>
    <tr>
    <td>
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="item_name" HeaderText="Item" 
            SortExpression="item_name" />
        <asp:BoundField DataField="item_brand" HeaderText="Brand" 
            SortExpression="item_brand" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" 
            SortExpression="quantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
    ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
    SelectCommand="current_list_query" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </td>
    </tr>
    </table>
    </div>
    <br />
</asp:Content>
