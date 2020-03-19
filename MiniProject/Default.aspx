<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: justify;
        }
        .auto-style2 {
            text-align: center;
        }

          .MyTabStyle .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 14px;
            font-weight:bold;
            display: block;

        }
        .MyTabStyle .ajax__tab_header .ajax__tab_outer
        {
            border-color: #222;
            color: #222;
            padding-left: 10px;
            margin-right: 3px;
            border:solid 1px #d7d7d7;
        }
        .MyTabStyle .ajax__tab_header .ajax__tab_inner
        {
            border-color: #666;
            color: #666;
            padding: 3px 10px 2px 0px;
        }
        .MyTabStyle .ajax__tab_hover .ajax__tab_outer
        {
            background-color:#9c3;
        }
        .MyTabStyle .ajax__tab_hover .ajax__tab_inner
        {
            color: #fff;
        }
        .MyTabStyle .ajax__tab_active .ajax__tab_outer
        {
            border-bottom-color: #ffffff;
            background-color: #d7d7d7;
        }
        .MyTabStyle .ajax__tab_active .ajax__tab_inner
        {
            color: #000;
            border-color: #333;
        }
        .MyTabStyle .ajax__tab_body
        {
            font-family: verdana,tahoma,helvetica;
            font-size: 10pt;
            background-color:brown;
            border-top-width: 0;
            border: solid 1px #d7d7d7;
            border-top-color: #ffffff;
        }
         .BackColorTab
        {
            font-family:Verdana, Arial, Courier New;
            font-size: 10px;
            color:Gray;
            background-color:blue !important;
        }
        .BackColorTab {}
        .BackColorTab {
            text-align: center;
        }
    </style>
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" style="text-align: right"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" ImageUrl="~/pic/Aloft_Hotels_logo.png" Height="85px" Width="177px"/>
            <br />
            <br />
            <br />
            <br />
            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2" Height="300px" Width="964px" CssClass="BackColorTab" >
                <ajaxToolkit:TabPanel runat="server" HeaderText="Home" ID="TabPanel1" CssClass="BackColorTab">
                    <ContentTemplate>
                        <div style="border-width: inherit; border-color: #FFFFFF; border-style: inherit; background-image: url('pic/home-background.jpg'); background-repeat: no-repeat; background-color: #A42561; background-attachment: inherit;">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" BorderColor="#FF9933" BorderStyle="Double" ForeColor="#993300" Text="Surround your spirit with a new reality."></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Hotel" >
                    <ContentTemplate>
                        <div style="height: 251px">
                            <div style="background-position: right 0px; background-color: #DADAE7;  background-image: url('pic/hotel_pic.jpg'); background-repeat: no-repeat; right: 534px;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent; color: rgb(102, 102, 102); font-family: Helvetica, Arial, FreeSans, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                                    Recently remodeled,<span>&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent;">Hotel DAH - D. Afonso Henriques</strong><span>&nbsp;</span>is Lisbon’s hidden gem, conveniently located just 10 minutes away from both Lisbon’s International Airport as well as the city center (Baixa).</p>
                                <p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent; color: rgb(102, 102, 102); font-family: Helvetica, Arial, FreeSans, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                                    Our contemporary style and welcoming environment is ideal to rest and visit the pitoresque Fado capital. Combining safety with convenience, we have private parking available to our guests. .</p>
                                <p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent; color: rgb(102, 102, 102); font-family: Helvetica, Arial, FreeSans, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; text-align: center;">
                                    <strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12pt; background: transparent; color: rgb(47, 187, 175);">Welcome to Hotel aloft</span></strong></p>
                                <p style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 15px; padding: 0px; outline: 0px; font-size: 18px; background: transparent; color: rgb(102, 102, 102); font-family: Helvetica, Arial, FreeSans, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; text-align: justify; width: 782px;">
                                    This is also our ‘Hotel’! We wish our guests to feel comfortable, to enjoy and repeat their experience with us.</p>
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Gallary">
                    <ContentTemplate>
                        <div style="background-color: #A8C6C6">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>lobby</asp:ListItem>
                                <asp:ListItem>room</asp:ListItem>
                                <asp:ListItem>coffee_shop</asp:ListItem>
                                <asp:ListItem>pool</asp:ListItem>
                                <asp:ListItem>bar</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:Image ID="Image2" runat="server" />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="Offers">
                    <ContentTemplate>
                        <div>
                            Enter your copun:<br />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox_discount" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button_discount" runat="server" OnClick="Button_discount_Click" Text="Enter" />
                            <br />
                            <br />
                            <asp:Label ID="label_discount" runat="server"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="Location">
                    <ContentTemplate>
                        <div>
                            <asp:Image ID="Image3" runat="server" Height="235px" ImageUrl="~/pic/location.jpg" Width="941px" />
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel6" runat="server" HeaderText="Book">
                    <HeaderTemplate>
                        Book
                    </HeaderTemplate>
                    <ContentTemplate>
                        <div>
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel7" runat="server" HeaderText="Contect us" OnDemandMode="Always">
                    <ContentTemplate>
                        <div>
                            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your name"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label>
                            &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Should start 9 or 7" ValidationExpression="^[7,9]\d{2}\d{2}\d{3}$"></asp:RegularExpressionValidator>
                            <br />
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Content"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="152px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your content"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Submit" />
                            <br />
                            <br />
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
                
            <div class="auto-style2">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                Copyright@2020 <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
        </div>
    </form>
</body>
</html>
