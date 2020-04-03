<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyBooking.aspx.cs" Inherits="MyBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
            font-family:'Century Gothic'; 
            color: #474747; font-size:30px;
        }

        .Grid {background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #525252; border-collapse:collapse; font-family:'Century Gothic'; color: #474747; font-size:20px;}

            .Grid td {
                padding: 2px;
                border: solid 1px #c1c1c1;
            }

            .Grid th {
                padding: 4px 2px;
                color: black;
                background-color: azure;
                border-left: solid 1px #525252;
                font-size: 0.9em;
            }

            .auto-style2
            {
                font-family:'Century Gothic'; 
            color: #474747; font-size:20px;
            border-radius:8px;
            }


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go to HomePage" CssClass="auto-style2" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Booking_Id" DataSourceID="SqlDataSource1" CssClass="Grid">
                <Columns>
                    <asp:BoundField DataField="Booking_Id" HeaderText="Booking_Id" InsertVisible="False" ReadOnly="True" SortExpression="Booking_Id" />
                    <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="Cust_id" HeaderText="Cust_id" SortExpression="Cust_id" />
                    <asp:BoundField DataField="Room_id" HeaderText="Room_id" SortExpression="Room_id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Booking] WHERE ([Cust_id] = @Cust_id)">
                <SelectParameters>
                    <asp:SessionParameter Name="Cust_id" SessionField="Customer_id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
