<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox  runat="server" BackColor="blue" BorderColor="#3366ff" BorderStyle="Groove" 
                BorderWidth="2px" Font-Bold="true" Font-Names="幼圆" Font-Size="Large" ForeColor="#0066FF" Height="50px"
                Width="200px"></asp:TextBox>
            <br />
            <asp:Label  runat="server"  BackColor="blue" BorderColor="#3366ff" BorderStyle="Groove" 
                BorderWidth="2px" Font-Bold="true" Font-Names="幼圆" Font-Size="Large" ForeColor="#0066FF" Height="100px"
                Width="300px"></asp:Label>
            <br />
            <asp:Button runat="server"  BackColor="blue" BorderColor="#3366ff" BorderStyle="Groove" 
                BorderWidth="2px" Font-Bold="true" Font-Names="幼圆" Font-Size="Large" ForeColor="#0066FF" Height="30px"
                Width="80px"/>
        </div>
        <asp:Calendar  runat="server" BackColor="lightblue" BorderColor="#3366ff" BorderStyle="Groove" 
                BorderWidth="2px"  Caption="万年历" CaptionAlign="Top" Font-Bold="false" Font-Names="幼圆" Font-Size="Large" ForeColor="#3333CC" >
            <OtherMonthDayStyle BackColor="white" />
            <NextPrevStyle BackColor="gray" BorderColor="#CC00FF" />
        </asp:Calendar>
        <asp:AdRotator  runat="server" BackColor="blue" BorderColor="#3366ff" BorderStyle="Groove" 
                BorderWidth="2px" Font-Bold="true" Font-Names="幼圆" Font-Size="Large" ForeColor="#0066FF" Height="30px"
                Width="200px"/>
        <br />
        <asp:Image  runat="server" BackColor="blue" BorderColor="#3366ff" BorderStyle="Groove" 
                BorderWidth="2px" ForeColor="#0066FF" Height="100px" Width="150px" ImageUrl="~/image/16sucai_P59202A242.JPG"/>
        <br />
        
        <asp:HyperLink  runat="server" BackColor="blue" BorderColor="#3366ff" BorderStyle="Groove" 
                BorderWidth="2px" Font-Bold="true" Font-Names="幼圆" Font-Size="Large" ForeColor="#0066FF"></asp:HyperLink>
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" ForeColor="#0000ff">
        </asp:DropDownList>
    </form>
</body>
</html>
