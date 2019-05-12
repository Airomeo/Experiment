<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .auto-style2 {
            height: 24px;
            text-align: right;
        }
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            width: 190px;
        }
        .auto-style5 {
            height: 24px;
            width: 190px;
        }
    </style>
</head>
<body style="width: 590px; height: 232px">
    <form id="form1" runat="server">
        <div>
            请输入登录名、用户名、密码、住址、个人主页、电子邮件<br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">★登录名：</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtLoginName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLoginName" runat="server" ControlToValidate="TxtLoginName" ErrorMessage="*登录名不能空" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">★用户名：</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="TxtName" ErrorMessage="*用户名不能空" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">★密码：</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvPass" runat="server" ControlToValidate="TxtPass" ErrorMessage="*密码不能空" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">住址：</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">个人主页：</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtHomePage" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">电子邮件：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
            </table>
        </div>
        <asp:Button ID="BtnReg" runat="server" BackColor="#C0C0FF" BorderColor="#C0C0FF" OnClick="BtnReg_Click" Text="注册" />
&nbsp;<asp:Button ID="BtnCancel" runat="server" BackColor="#C0C0FF" BorderColor="#C0C0FF" Text="取消" />
        <br />
        <asp:Label ID="LblCaution" runat="server">LblCaution</asp:Label>
    </form>
</body>
</html>
