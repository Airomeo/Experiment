<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProShow.aspx.cs" Inherits="ProShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 92px;
        }
        .auto-style2 {
            width: 100%;
            margin-right: 42px;
        }
    </style>
</head>
<body style="width: 649px; height: 230px">
    <form id="form1" runat="server">
        <div>
            分类名：
            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="CategoryId"
                OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <asp:GridView ID="gvProduct" runat="server" AllowPaging="True" AutoGenerateColumns="False" PageSize="1"
                OnPageIndexChanging="GvProduct_PageIndexChanging" PagerSettings-Mode="NextPrevious" Width="100%">
                <PagerSettings FirstPageText="首页" LastPageText="尾页"  NextPageText="下一页"
                 Position="TopAndBottom" PreviousPageText="上一页" Mode="NextPrevious" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style1" rowspan="4">
                                        <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Bind("Image") %>' />
                                    </td>
                                    <td>商品名称：</td>
                                    <td>
                                        <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>商品价格：</td>
                                    <td>
                                        <asp:Label ID="lblListPrice" runat="server" Text='<%# Bind("ListPrice") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>商品描述：</td>
                                    <td>
                                        <asp:Label ID="lblDescn" runat="server" Text='<%# Bind("Descn") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>库存：</td>
                                    <td>
                                        <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty")%>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="~/ShopCart.aspx?ProductId={0}" HeaderText="放入购物车" Text="购买" />
                </Columns>
                <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPrevious" NextPageText="下一页" Position="TopAndBottom" PreviousPageText="上一页" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
