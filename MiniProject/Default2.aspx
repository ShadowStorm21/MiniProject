<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 296px;
        }
        .auto-style2 {
            margin-left: 54px;
        }
        .auto-style3 {
            width: 45%;
            border-style: solid;
            border-width: 1px;
            background-color: whitesmoke;
              display: block;
           box-shadow: 0px 0px 6px -1px rgba(0,0,0,0.75);
            height: 419px;
        }
        .auto-style4 {
            width: 283px;
        }
        .auto-style5 {
            width: 198px;
        }

        .auto-style6 {
            width: 34px;
        }
        .auto-style7 {
            width: 283px;
            height: 40px;
        }
        .auto-style8 {
            width: 198px;
            height: 40px;
        }
        .auto-style9 {
            width: 34px;
            height: 40px;
        }
    </style>
</head>
<body style="background-color: lightgreen">
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;
            <table align="center" class="auto-style3">
                <tr>
                    <td class="auto-style7">
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style8">
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="199px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password</td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="199px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox6" ErrorMessage="Passwords does not match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Confrim Password</td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="200px">
                <asp:ListItem>Muscat</asp:ListItem>
                <asp:ListItem>Sur</asp:ListItem>
                <asp:ListItem>Nizwa</asp:ListItem>
            </asp:DropDownList>
                    </td>
                    <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="40px" Width="141px" />
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="Refresh" OnClick="Button1_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Text="Enter above captcha code :"></asp:Label>
                    </td>
                    <td class="auto-style5">
            <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">
            <asp:Button ID="Button2" runat="server" Text="Sign up" OnClick="Button2_Click" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6">
            <asp:Label ID="Label7" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            <br />
&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;
            <br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
