<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="dvProduct" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProductId" DataSourceID="ldsProduct" Height="46px" Width="201px">
                <Fields>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                    <asp:TemplateField HeaderText="CategoryId" SortExpression="CategoryId">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlCategoryId" runat="server" AutoPostBack="True" DataSourceID="ldsCategory" DataTextField="Name" DataValueField="CategoryId" SelectedValue='<%# Bind("CategoryId") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlCategoryId3" runat="server" AutoPostBack="True" DataSourceID="ldsCategory" DataTextField="Name" DataValueField="CategoryId" SelectedValue='<%# Bind("CategoryId") %>'>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
                    <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" SortExpression="UnitCost" />
                    <asp:TemplateField HeaderText="SuppId" SortExpression="SuppId">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlCategoryId1" runat="server" DataSourceID="ldsCategory" DataTextField="Name" DataValueField="CategoryId" SelectedValue='<%# Bind("SuppId") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlCategoryId2" runat="server" DataSourceID="ldsCategory" DataTextField="Name" DataValueField="CategoryId" SelectedValue='<%# Bind("SuppId") %>'>
                            </asp:DropDownList>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("SuppId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
                    <asp:TemplateField HeaderText="Image" SortExpression="Image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("Image") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:LinqDataSource ID="ldsProduct" runat="server" ContextTypeName="MyPetShopDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Product">
            </asp:LinqDataSource>
            <asp:LinqDataSource ID="ldsCategory" runat="server" ContextTypeName="MyPetShopDataContext" EntityTypeName="" Select="new (CategoryId, Name)" TableName="Category">
            </asp:LinqDataSource>
            <asp:LinqDataSource ID="ldsSupplier" runat="server" ContextTypeName="MyPetShopDataContext" EntityTypeName="" Select="new (SuppId, Name)" TableName="Supplier">
            </asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
