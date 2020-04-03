<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>
<script runat="server">

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 335px;
        }
        .auto-style2 {
            margin-left: 54px;
               font-family: 'Century Gothic';
            font-size: 20px;
             border-radius:8px;
        }
        .auto-style3 {
            width: 50%;
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
        }
        .auto-style4 {
            width: 200px;
            
            margin:20px;
             
        }
        .auto-style5 {
            width: 392px;
            
           
        }

        .auto-style6 {
            width: 120px;
           
        }

        .auto-style7 {
            width: 200px;
            height: 40px;
        }

        .auto-style9 {
            width: 120px;
            height: 40px;
        }
        .auto-style10 {
            width: 200px;
            height: 49px;
        }
        .auto-style12 {
            width: 120px;
            height: 49px;
       
        }
        .auto-style13 {
            margin-left: 25%;
            font-family: 'Century Gothic';
            font-size: 40px;
        }
        .auto-style14 {
            width: 392px;
            height: 40px;
              font-family: 'Century Gothic';
            font-size: 20px;
          
        }

        .auto-style15 {
            width: 392px;
            height: 49px;
            font-family: 'Century Gothic';
            font-size: 20px;
             border-radius:8px;
        
        }
        body
        {
            background-color:whitesmoke;
           
        }
        .TextBoxStyle
        {
            border-radius:8px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
&nbsp;&nbsp;<br />
            <br />
&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label8" runat="server" Text=" Create a New Account to Enjoy All of Our Services" CssClass="auto-style13" ></asp:Label>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;
            <table align="center" class="auto-style3">
                <tr>
                    <td class="auto-style7">
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="375px" CssClass="TextBoxStyle"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style9">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Email" ></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="375px" CssClass="TextBoxStyle"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password</td>
                    <td class="auto-style5">
                        <br />
            <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="375px" CssClass="TextBoxStyle"></asp:TextBox>
                        <ajaxToolkit:PasswordStrength ID="TextBox6_PasswordStrength" runat="server" BehaviorID="TextBox6_PasswordStrength" MinimumLowerCaseCharacters="1" MinimumNumericCharacters="1" MinimumSymbolCharacters="1" MinimumUpperCaseCharacters="1" PreferredPasswordLength="8" TargetControlID="TextBox6">
                        </ajaxToolkit:PasswordStrength>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox6" ErrorMessage="Passwords does not match"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Confrim Password</td>
                    <td class="auto-style5">
                        <br />
            <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="375px" CssClass="TextBoxStyle"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <br />
            <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="375px" CssClass="TextBoxStyle"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label3" runat="server" Text="Location" ></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="49px" Width="375px" CssClass="TextBoxStyle">
                <asp:ListItem>Muscat</asp:ListItem>
                <asp:ListItem>Sur</asp:ListItem>
                <asp:ListItem>Nizwa</asp:ListItem>
            </asp:DropDownList>
                        <br />
                        <br />
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
                        <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="375px"  CssClass="TextBoxStyle"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <br />
                    <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="40px" Width="141px" />
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style2" Text="Refresh" OnClick="Button1_Click" BackColor="#33CCFF"  />
                    <br />
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="Label5" runat="server" Text="Enter above captcha code :"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <br />
            <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="375px"  CssClass="TextBoxStyle"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style15">
                        <br />
            <asp:Button ID="Button2" runat="server" Text="Sign up" OnClick="Button2_Click" Width="375px" CssClass="auto-style15" BackColor="#33CCFF" />
                        <br />
                        <br />
                        <br />
                        Already have an account?
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Click here!</asp:HyperLink>
                        <br />
                    </td>
                    <td class="auto-style12">
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
