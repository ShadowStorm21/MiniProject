<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paymentForm.aspx.cs" Inherits="paymentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}


/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
        .auto-style1 {
            margin-left: 35px;
        }
        .auto-style2 {
            margin-left: 185px;
        }
        .auto-style3 {
            margin-left: 154px;
        }
        .auto-style4 {
            margin-left: 243px;
        }
        .auto-style5 {
            margin-left: 280px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <div class="row">
  <div class="col-75">
    <div class="container">
        
            <h1>Payment</h1>
       
            <asp:Label ID="Label7" runat="server" Text="Name on Card"/>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="25px" Width="220px"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Credit card number"/>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" Height="25px" Width="220px"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Card Number is Required"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Exp Month"/>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style1" AutoPostBack="True" Height="30px" Width="85px">
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Month is Required"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Exp Year"/>
                &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="35px" Width="85px">
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
                <asp:ListItem>2023</asp:ListItem>
                <asp:ListItem>2024</asp:ListItem>
                <asp:ListItem>2025</asp:ListItem>
                <asp:ListItem>2026</asp:ListItem>
                <asp:ListItem>2027</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Year is Required"></asp:RequiredFieldValidator>
            <br />
            <br />
            <div class="row">
             
              <div class="col-50">
                <asp:Label ID="Label11" runat="server" Text="CVV"/>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4" Height="25px" Width="220px"/>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="CVV is Required"></asp:RequiredFieldValidator>
                  <br />
                  <br />
              </div>
            </div>
         

        
        
        <asp:Button ID="SubmitBTN" runat="server"  Height="27px" Text="Pay" Width="225px" CssClass="auto-style5" OnClick="SubmitBTN_Click"/>
     
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
    </div>
  </div>

</div>
    </form>
</body>
</html>
