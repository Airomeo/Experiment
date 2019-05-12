<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GroupValidation.aspx.cs" Inherits="GroupValidation" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
       
        .auto-style1 {
            text-align: right;
            width: 106px;
        }
        
        .auto-style2 {
            width: 192px;
        }
        
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">用户名：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        
                    </td>
                    <td><asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="请输入用户名" ControlToValidate="txtName" Display="Dynamic"
                           SetFocusOnError="True" Text="*" ValidationGroup="groupName"></asp:RequiredFieldValidator>

                        <asp:Button ID="btnValidateName" runat="server" Text="用户名是否可用" OnClick="btnValidateName_Click" ValidationGroup="groupName" />
                        <asp:Label ID="lblName" runat="server" Text="空"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">密码：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                       
                    </td>
                    <td> <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="请输入密码！" Display="Dynamic"
                            ControlToValidate="txtPassword" SetFocusOnError="true" Text="*" ValidationGroup="groupSubmit"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                 <tr>
                    <td class="auto-style1">确认密码：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
                       
                     </td>
                     <td><asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ErrorMessage="请输入确认密码！" ControlToValidate="txtPasswordAgain"
                            Display="Dynamic" SetFocusOnError="true" Text="*" ValidationGroup="groupSubmit"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPassword" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" runat="server" ErrorMessage="密码与确认密码不一致！"
                            Display="Dynamic" SetFocusOnError="true" ValidationGroup="groupSubmit"></asp:CompareValidator>
               </td>

                 </tr>
                 <tr>
                    <td class="auto-style1">生日：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
                        
                     </td>
                     <td><asp:RequiredFieldValidator ID="rfvBirthday" ControlToValidate="txtBirthday" runat="server" ErrorMessage="请输入生日！"
                            Display="Dynamic" SetFocusOnError="true" Text="*" ValidationGroup="groupSubmit"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvBirthday" ControlToValidate="txtBirthday" Display="Dynamic" runat="server" ErrorMessage="日期应在1900-1-1到2020-1-1之间！"
                            MaximumValue="2020-1-1" MinimumValue="1900-1-1" SetFocusOnError="true" Type="Date" ValidationGroup="groupSubmit"></asp:RangeValidator>

                     </td>
                </tr>
                 <tr>
                    <td class="auto-style1">电话号码：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                        
                     </td>
                     <td><asp:RequiredFieldValidator ID="rfvTelephone" ControlToValidate="txtTelephone" Display="Dynamic" runat="server" ErrorMessage="请输入电话号码！"
                            SetFocusOnError="true" Text="*" ValidationGroup="groupSubmit"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTelephone" ControlToValidate="txtTelephone" Display="Dynamic" runat="server" ErrorMessage="电话号码格式应为021-66798304！"
                            ValidationExpression="\d{3}-\d{8}" SetFocusOnError="true" ValidationGroup="groupSubmit"></asp:RegularExpressionValidator>
                </td>

                 </tr>
                 <tr>
                    <td class="auto-style1">身份证：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtIdentity" runat="server"></asp:TextBox>
                        
                     </td>
                     <td><asp:RequiredFieldValidator ID="rfvIdentity" ControlToValidate="txtIdentity" Display="Dynamic"  runat="server" ErrorMessage="请输入身份证号！"
                            SetFocusOnError="true" Text="*" ValidationGroup="groupSubmit"></asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="csvIdentity" ControlToValidate="txtIdentity" Display="Dynamic" runat="server" ErrorMessage="身份证号错误！"
                            SetFocusOnError="true" ValidationGroup="groupSubmit" OnServerValidate="CsvIdentity_ServerValidate"></asp:CustomValidator>

                     </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" ValidationGroup="groupSubmit" />
        <asp:Label ID="lblMsg" runat="server" Text="空"></asp:Label>
        <br />
        <asp:ValidationSummary ID="vsSubmit" DisplayMode="List" ShowMessageBox="true" ShowSummary="false" runat="server" ValidationGroup="groupSubmit" />
        <asp:ValidationSummary ID="vsName" runat="server" DisplayMode="List" ShowMessageBox="true" ShowSummary="False" ValidationGroup="groupName" />
    </form>
</body>
</html>

