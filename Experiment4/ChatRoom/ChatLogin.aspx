<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatLogin.aspx.cs" Inherits="ChatLogin" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 38%;
            height: 134px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: right;
            width: 176px;
        }
        .auto-style4 {
            width: 188px;
        }
        .auto-style5 {
            width: 176px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3" class="auto-style2">我的聊天室</td>
        </tr>
        <tr>
            <td class="auto-style3">用户名：</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtName" Text="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">密码：</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPassword" runat="server" TextMode ="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate ="txtPassword" Text ="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" >
                &nbsp;</td>
            <td class="auto-style4">

                <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" />

            </td>
        </tr>
    </table>
    </form>
</body>
</html>
