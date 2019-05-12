<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .center{ text-align: center}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="center">
            <asp:Label ID="Label1" runat="server" Text="简易计算器"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="110px" ReadOnly="true"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="1" Width="40px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="2" Width="40px" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="3" Width="40px" />
            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="+" Width="40px" />
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="-" Width="40px" />
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="=" Width="40px" />
            <br />
        </div>
    </form>
</body>
</html>
