<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMsg" runat="server" Text="空"></asp:Label>
            <br />
            <asp:CheckBoxList ID="chklsPet" runat="server">
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="btnClear" runat="server" Text="清空购物车" OnClick="btnClear_Click" />
            <asp:Button ID="btnContinue" runat="server" Text="继续购物" OnClick="btnContinue_Click" />
        </div>
    </form>
</body>
</html>
