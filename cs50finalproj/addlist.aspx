<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Frontend.Master" CodeBehind="addlist.aspx.vb" Inherits="cs50finalproj.baselist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="left_side">
<p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource2" DataTextField="store_name" 
        DataValueField="storeid" AppendDataBoundItems="True">
        <asp:ListItem Value="">{Select One}</asp:ListItem>
        </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="item_name" HeaderText="Item" 
                SortExpression="item_name" />
            <asp:BoundField DataField="item_brand" HeaderText="Type" 
                SortExpression="item_brand" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" 
                SortExpression="quantity" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
        SelectCommand="list_select" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="storeid" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
        SelectCommand="store_dropdown" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
</p>
</div>
    <div id="item_menu">
        <p>
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="item_name" HeaderText="Items" 
                        SortExpression="item_name" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
                SelectCommand="item_menu" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </p>

                <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateRows="False" DataKeyNames="itemID" DataSourceID="SqlDataSource4" DefaultMode="Insert"
            Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="itemID" HeaderText="itemID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="itemID" Visible="False" />
                        <asp:BoundField DataField="item_name" HeaderText="Item" 
                            SortExpression="item_name" />
                        <asp:BoundField DataField="item_brand" HeaderText="Type" 
                            SortExpression="item_brand" />
                        <asp:BoundField DataField="item_price" HeaderText="item_price" 
                            SortExpression="item_price" Visible="False" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
        </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:cs50finalConnectionString %>" 
                    SelectCommand="SELECT * FROM items" InsertCommand="add_item" 
            InsertCommandType="StoredProcedure">
                    <InsertParameters>
                        <asp:Parameter Name="item_name" Type="String" />
                        <asp:Parameter Name="item_brand" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>

    </div>
</asp:Content>
