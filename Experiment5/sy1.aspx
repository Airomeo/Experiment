<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="sy1.aspx.cs" Inherits="sy1"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    你喜欢的明星有哪些？（多选）<asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem>周杰伦</asp:ListItem>
        <asp:ListItem>刘德华</asp:ListItem>
        <asp:ListItem>蔡依林</asp:ListItem>
    </asp:CheckBoxList>

    
    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server"  Text="重选" OnClick="Button2_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    请选择母版：<br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="sy1.aspx?master=master1">母版一</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="sy1.aspx?master=master2">母版二</asp:HyperLink>
    <br />
</asp:Content>

