<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        

        .auto-style3 {
            width: 35%;
            border-style: solid;
            border-width: 1px;
            display: block;
            box-shadow: 0px 0px 4px -1px rgba(0,0,0,0.75);
            height: 100%;
            padding: 30px;
            font-family: 'Century Gothic';
            font-size: 20px;
            background-color: azure;
            border-radius: 12px;
            margin-left: 540px;
        }

         body
        {
            background-color:whitesmoke;
           
        }
        .TextBoxStyle
        {
            border-radius:8px;
        }
        .auto-style4 {
            border-radius: 8px;
            margin-left: 50px;
        }
        .auto-style5 {
            margin-left: 50px;
            font-family: 'Century Gothic';
            font-size: 20px;
             border-radius:8px;
             height: 45px;
        }

        .auto-style13 {
            margin-left: 30%;
            font-family: 'Century Gothic';
            font-size: 40px;
        }

        .auto-style14 {
            width: 436px;
        }

        .auto-style15 {
            width: 392px;
            height: 49px;
            font-family: 'Century Gothic';
            font-size: 20px;
             border-radius:8px;
        
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Login to Access All of Our Services" CssClass="auto-style13"></asp:Label>
&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <table cellpadding="2" class="auto-style3">
                <tr>
                    <td>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4" Height="30px" Width="374px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <br />
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4" Height="30px" Width="375px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style14">
                        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" CssClass="auto-style5" Height="30px" Width="375px" />
                        <br />
                    </td>
                    <td>
        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style14">
                        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Don&#39;t have an account?<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Signup.aspx">Click Here!</asp:HyperLink>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;<br />
        <br />
        <br />
    </form>
</body>
</html>
