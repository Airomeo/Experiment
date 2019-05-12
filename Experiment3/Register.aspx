<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Ex5_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>用户名：</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="请输入用户名" ControlToValidate="txtName" Display="Dynamic"
                           SetFocusOnError="True" Text="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>密码：</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="请输入密码！" Display="Dynamic"
                            ControlToValidate="txtPassword" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>确认密码：</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ErrorMessage="请输入确认密码！" ControlToValidate="txtPasswordAgain"
                            Display="Dynamic" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" runat="server" ErrorMessage="密码与确认密码不一致！"
                            Display="Dynamic" SetFocusOnError="true"></asp:CompareValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>生日：</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvBirthday" ControlToValidate="txtBirthday" runat="server" ErrorMessage="请输入生日！"
                            Display="Dynamic" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvBirthday" ControlToValidate="txtBirthday" Display="Dynamic" runat="server" ErrorMessage="日期应在1900-1-1到2020-1-1之间！"
                            MaximumValue="2020-1-1" MinimumValue="1900-1-1" SetFocusOnError="true" Type="Date"></asp:RangeValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>电话号码：</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvTelephone" ControlToValidate="txtTelephone" Display="Dynamic" runat="server" ErrorMessage="请输入电话号码！"
                            SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTelephone" ControlToValidate="txtTelephone" Display="Dynamic" runat="server" ErrorMessage="电话号码格式应为021-66798304！"
                            ValidationExpression="\d{3}-\d{8}" SetFocusOnError="true"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>身份证：</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtIdentity" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RequiredFieldValidator ID="rfvIdentity" ControlToValidate="txtIdentity" Display="Dynamic"  runat="server" ErrorMessage="请输入身份证号！"
                            SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="csvIdentity" ControlToValidate="txtIdentity" Display="Dynamic" runat="server" ErrorMessage="身份证号错误！"
                            SetFocusOnError="true" OnServerValidate="csvIdentity_ServerValidate"></asp:CustomValidator>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>

            <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMsg" runat="server" Text="空"></asp:Label>

            <br />
            <asp:ValidationSummary ID="vsSubmit" DisplayMode="List" ShowMessageBox="true" ShowSummary="false" runat="server" />
        </div>
    </form>
</body>
</html>
