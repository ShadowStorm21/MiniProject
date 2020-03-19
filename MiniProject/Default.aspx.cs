using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        label_discount.Text = "";

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Image2.ImageUrl = "~/pic/" + DropDownList1.SelectedItem.Value +".jpg";
    }

    protected void Button_discount_Click(object sender, EventArgs e)
    {
        if (TextBox_discount.Text == "123")
        {
            label_discount.Text = "accepted";
        }
        else {
            label_discount.Text = "Not accepted";

        }
    }
}