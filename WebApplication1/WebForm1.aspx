<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to my Life.</title>
</head>
<body>
    <div>Welcome to Practical 1.</div> 
    <br />
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Calculate" runat="server" Text="Calculate" OnClick="Calculate_Click" /> &emsp;
            
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> &emsp;
            
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">+</asp:ListItem>
                <asp:ListItem Value="1">-</asp:ListItem>
                <asp:ListItem Value="2">*</asp:ListItem>
                <asp:ListItem Value="3">/</asp:ListItem>
            </asp:DropDownList> &emsp;
            
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> &emsp;
            
            <asp:Label ID="Label1" runat="server" Text="=Base10;"></asp:Label> &emsp;
            
            <asp:TextBox ID="base10" runat="server"></asp:TextBox> &emsp;

            <asp:Label ID="Label2" runat="server" Text="=Base2;"></asp:Label> &emsp;

            <asp:TextBox ID="base2" runat="server"></asp:TextBox> 
            <br />
        </div>
        
        <div>
            <br />
            <asp:Button ID="Count" runat="server" Text="Count" OnClick="Count_Click" />
            
            <br />
            <asp:Label ID="Label3" runat="server" Text="Number of 0"></asp:Label> &emsp;
            
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Number of 1"></asp:Label> &emsp;
   
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>    
        </div>
    </form>
</body>
</html>
