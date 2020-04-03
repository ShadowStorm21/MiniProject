<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

       <!-- <link href="StyleSheet.css" rel="stylesheet" type="text/css" /> -->

    <style>
        /* style sheet for tab*/
     
     
        .TabStyle .ajax__tab_header
        {
            cursor: pointer;
            background-color: azure;
            font-weight: bold;
            height: 70px;
            border-bottom: 1px solid #bebebe;
            width:100%;
        }



        .TabStyle .ajax__tab_tab {
            border: 1px solid;
            border-color: #e1e1e1 #e1e1e1 #bebebe #e1e1e1;
            background-color: azure;
            color: #777777;
            cursor: pointer;
            text-decoration: none;
            padding: 30px;
            font-family: 'Century Gothic';
            font-size: 40px;
        }


        .TabStyle .ajax__tab_body {
            font-family: 'Century Gothic';
            font-size: 15pt;
            border-top: 0;
            border: 1px solid black ;
            border-top: none;
            padding: 5px;
            height:100%;
            background-color: azure;
            width: 99%;
        }
        body
        {
            background-color:whitesmoke;
            
        }

        .TabStyle .ajax__tab_active .ajax__tab_inner, .TabStyle .ajax__tab_header .ajax__tab_inner, .TabStyle .ajax__tab_hover .ajax__tab_inner
        {
                height: 50px;
                margin-left: 125px;
        }
        .TabStyle .ajax__tab_active .ajax__tab_tab, .TabStyle .ajax__tab_hover .ajax__tab_tab, .TabStyle .ajax__tab_header .ajax__tab_tab {
            margin: 20px 20px 0px 0px;
        }
        td,th
        {
            font-family: 'Century Gothic';
        }
        table
        {
            
        }
         .auto-style15 {
            width: 150px;
            height: 49px;
            font-family: 'Century Gothic';
            font-size: 20px;
             border-radius:8px;
        
        }

         .TextBoxStyle
        {
            border-radius:8px;
            width:300px;
            height:30px;
        }
         .menu-Style
         {
                font-family: 'Century Gothic';
            font-size: 22px;
            margin-left:85%; 
            Width:100px;
         }
         .mLabel
         {
             margin-left:85%;
              font-family: 'Century Gothic';
            font-size: 25px;
         }
    </style>
    



   

</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            
            <asp:Image ID="Image1" runat="server" ImageUrl="~/pic/Aloft_Hotels_logo.png" Height="100px" Width="177px"/>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="mLabel" ></asp:Label>
        
            <div class="auto-style1">
        
            <asp:Menu ID="Menu1" runat="server" CssClass="menu-Style"  OnMenuItemClick="Menu1_MenuItemClick">
                <DynamicItemTemplate>
                    <%# Eval("Text") %>
                </DynamicItemTemplate>
                <Items>
                    <asp:MenuItem Text="Account" Value="Account" >
                        <asp:MenuItem Text="View Profile" Value="View Profile"  NavigateUrl="~/MyProfileForm.aspx"  ></asp:MenuItem>
                        <asp:MenuItem Text="My Booking" Value="My Booking" NavigateUrl="~/MyBooking.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Logout" Value="Logout"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ViewReport.aspx" Text="ViewReport" Value="ViewReport"></asp:MenuItem>
                </Items>
            </asp:Menu>
        
            </div>
        
            <br />
            
            <br />
            <br />
            <br />
            <br />

            <br />
            <br />
            <br />
            <div>
          <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="5"  CssClass="TabStyle">
                <ajaxToolkit:TabPanel runat="server" HeaderText="Home" ID="TabPanel1" >
                    <HeaderTemplate><div class="auto-style1">Home</div></HeaderTemplate><ContentTemplate><div style="                                                                                                                 border-width: inherit;
                                                                                                                 border-color: #FFFFFF;
                                                                                                                 border-style: inherit;
                                                                                                                 background-image: url('pic/home-background.jpg');
                                                                                                                 background-repeat: no-repeat;
                                                                                                                 background-color: #A42561;
                                                                                                                 background-attachment: inherit;"><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" BorderColor="#FF9933" BorderStyle="Double" ForeColor="#993300" Text="Surround your spirit with a new reality."></asp:Label><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div></ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Hotel"  >
                    <ContentTemplate><div style="height: 251px"><div style="background-position: right 0px; background-color: #DADAE7;  background-image: url('pic/hotel_pic.jpg'); background-repeat: no-repeat; right: 534px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent; color: rgb(102, 102, 102); font-family: Century Gothic; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Recently remodeled,<span>&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent;">Hotel DAH - D. Afonso Henriques</strong><span>&nbsp;</span>is Lisbon’s hidden gem, conveniently located just 10 minutes away from both Lisbon’s International Airport as well as the city center (Baixa).</p><p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent; color: rgb(102, 102, 102); font-family: Century Gothic; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">Our contemporary style and welcoming environment is ideal to rest and visit the pitoresque Fado capital. Combining safety with convenience, we have private parking available to our guests. .</p><p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent; color: rgb(102, 102, 102); font-family: Century Gothic; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; text-align: center;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; background: transparent;"><span style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 12pt; background: transparent; color: rgb(47, 187, 175);">Welcome to Hotel aloft</span></strong></p><p style="border-style: none; border-color: inherit; border-width: 0px; margin: 0px 0px 15px; padding: 0px; outline: 0px; font-size: 18px; background: transparent; color: rgb(102, 102, 102); font-family: Century Gothic; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; text-align: justify; width: 782px;">This is also our ‘Hotel’! We wish our guests to feel comfortable, to enjoy and repeat their experience with us.</p></div><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div></ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Gallary">
                    <ContentTemplate><div style="background-color: #A8C6C6; font-family:Century Gothic;"><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" style="font-family:Century Gothic;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"><asp:ListItem>lobby</asp:ListItem><asp:ListItem>room</asp:ListItem><asp:ListItem>coffee_shop</asp:ListItem><asp:ListItem>pool</asp:ListItem><asp:ListItem>bar</asp:ListItem></asp:DropDownList><br /><br /><br /><br /><br /><asp:Image ID="Image2" runat="server" /><br /><br /><br /><br /><br /><br /><br /></div><br /><br /><br /><br /><br /></ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="Location">
                    <ContentTemplate><div><asp:Image ID="Image3" runat="server" Height="235px" ImageUrl="~/pic/location.jpg" Width="100%" /></div></ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel6" runat="server" HeaderText="Book">
                    <HeaderTemplate>Book</HeaderTemplate>
                    <ContentTemplate><div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table style="width:100%; font-family:Century Gothic;"><tr><td class="auto-style3"><asp:Label ID="Label7" runat="server" Text="From"></asp:Label></td><td><asp:Label ID="Label8" runat="server" Text="To"></asp:Label></td><td>&nbsp;</td></tr><tr><td class="auto-style3"><asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar></td><td><asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar></td><td>&nbsp;</td></tr><tr><td class="auto-style3">&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label9" runat="server" style="font-family:Century Gothic;" ></asp:Label><br /><br /><br /><table class="auto-style11"><tr><td class="auto-style7">Sleeps</td><td class="auto-style5">
                        &nbsp;&nbsp; Room Type</td><td class="auto-style9">&nbsp;&nbsp; price</td><td class="auto-style13">&nbsp;&nbsp; select rooms</td><td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sample pictuer</td><td class="auto-style4">&nbsp;&nbsp;&nbsp; choose</td></tr><tr><td class="auto-style8">2 adults </td><td class="auto-style6">1 king bed</td><td class="auto-style10">&nbsp; <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td><td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList2" runat="server"><asp:ListItem>1</asp:ListItem><asp:ListItem>2</asp:ListItem><asp:ListItem>3</asp:ListItem><asp:ListItem>4</asp:ListItem></asp:DropDownList></td><td class="auto-style15"><asp:Image ID="Image4" runat="server" Height="94px" ImageUrl="~/pic/T_kingBed.jpg" Width="213px" /></td><td class="auto-style15">&nbsp;&nbsp; <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" /></td></tr><tr><td class="auto-style8">2 adults + one baby</td><td class="auto-style6">&nbsp;2 full beds</td><td class="auto-style10">
                        &nbsp; <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td><td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList3" runat="server"><asp:ListItem>1</asp:ListItem><asp:ListItem>2</asp:ListItem><asp:ListItem>3</asp:ListItem><asp:ListItem>4</asp:ListItem></asp:DropDownList></td><td class="auto-style15"><asp:Image ID="Image5" runat="server" Height="108px" ImageUrl="~/pic/T_DoubleBed.jpg" Width="212px" /></td><td class="auto-style15">&nbsp;&nbsp; <asp:CheckBox ID="CheckBox2" runat="server" /></td></tr><tr><td class="auto-style8">1 adult</td><td class="auto-style6">studio - 1 bed</td><td class="auto-style10">&nbsp; <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td><td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList4" runat="server"><asp:ListItem>1</asp:ListItem><asp:ListItem>2</asp:ListItem><asp:ListItem>3</asp:ListItem><asp:ListItem>4</asp:ListItem></asp:DropDownList></td><td class="auto-style15"><asp:Image ID="Image6" runat="server" Height="101px" ImageUrl="~/pic/T_Studio.jpg" Width="212px" /></td><td class="auto-style15">
                        &nbsp;&nbsp; <asp:CheckBox ID="CheckBox3" runat="server" /></td></tr></table><br /><br /><asp:Label ID="Label14" runat="server" Text="DO you have promo code ? Enter here" style="font-family:Century Gothic;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox><br /><br /><br /><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Book" CausesValidation="False"  CssClass="auto-style15"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label13" runat="server" style="font-family:Century Gothic;"></asp:Label><br /><br /><br /></div></ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel7" runat="server" HeaderText="Contact us">
                    <ContentTemplate><div><asp:Label ID="Label3" runat="server" Text="Name" style="font-family:Century Gothic;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" CssClass="TextBoxStyle"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your name"></asp:RequiredFieldValidator><br /><br /><asp:Label ID="Label4" runat="server" Text="Contact" style="font-family:Century Gothic;"></asp:Label>&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" CssClass="TextBoxStyle" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Should start 9 or 7" ValidationExpression="^[7,9]\d{2}\d{2}\d{3}$"></asp:RegularExpressionValidator><br /><br /><asp:Label ID="Label5" runat="server" Text="Email" style="font-family:Century Gothic;"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" CssClass="TextBoxStyle"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br /><br /><asp:Label ID="Label6" runat="server" Text="Content" style="font-family:Century Gothic;"></asp:Label><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"  CssClass="TextBoxStyle" style="height:70px;"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your content"></asp:RequiredFieldValidator><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="auto-style15" OnClick="Button1_Click"/><br /><br /></div></ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>
                
            </div>
                
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
