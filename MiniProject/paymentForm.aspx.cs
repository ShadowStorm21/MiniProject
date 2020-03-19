using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paymentForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void SubmitBTN_Click(object sender, EventArgs e)
    {
       


            //if(Session["username"] != null) // check if the user is logged already or not
            //{
            if (checkFields())
            {
                // move to another page or show a notification to the user
                //Response.Redirect("OrdersPageMaybe??.aspx");

                Label13.Text = "";
            }
            else
            {

                return;
            }

            //}
            //else
            //{
            // send user to login page
            //Response.Redirect("Login.aspx");
            //}
        

    }


    protected Boolean checkFields()
    {
       
        if(TextBox2.Text.Length != 16)
        {
            Label13.Text = "Card Number must be 16 Number";
            return false;
        }

        if(TextBox3.Text.Length != 3)
        {
            Label13.Text = "CVV must be 3 Numbers";
            return false;
        }
       

        return true;
    }
}


    
