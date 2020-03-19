<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MiniProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            
            height: 93px;
            text-align: center;
            width: 800px;
            margin:400px auto auto auto;
            padding:40px 40px 40px 40px;
            display: block;
           box-shadow: 0px 0px 6px -1px rgba(0,0,0,0.75);
        }
        .auto-style3 {
            margin-left: 35px;
        }
        .auto-style4 {
            margin-left: 97px;
            margin-bottom: 0px;
            background-color: lightgreen
        }
    </style>
</head>
<body style="background-color: lightgreen">
    <form id="form1" runat="server"  >

        <div class="auto-style1" style=" background-color: whitesmoke">
            Username<asp:TextBox ID="TextBox1" runat="server" BackColor="Wheat" CssClass="auto-style3" Height="26px" Width="210px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
            <br />
            <br />
            Password<asp:TextBox ID="TextBox2" runat="server" BackColor="Wheat" CssClass="auto-style3" Height="26px" Width="210px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required"></asp:RequiredFieldValidator>
            &nbsp;<br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="auto-style4" Height="25px" Width="210px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
