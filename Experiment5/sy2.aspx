<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeFile="sy2.aspx.cs" Inherits="sy2"     %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        给网页换种风格吧：</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="sy2.aspx?theme=1">暖色</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="sy2.aspx?theme=2">冷色</asp:HyperLink>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        对于下面的运动，你会选择哪些？（多选）</p>
    <p>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>羽毛球</asp:ListItem>
            <asp:ListItem>乒乓球</asp:ListItem>
            <asp:ListItem>篮球</asp:ListItem>
        </asp:CheckBoxList>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="重选" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
</asp:Content>

