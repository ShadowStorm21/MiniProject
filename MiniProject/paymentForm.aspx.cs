using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class paymentForm : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter ad = new SqlDataAdapter();
    SqlDataReader dr;
    DataSet ds = new DataSet();


    SqlConnection con2 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
    SqlCommand cmd2 = new SqlCommand();
    SqlDataAdapter ad2 = new SqlDataAdapter();
    SqlDataReader dr2;
    DataSet ds2 = new DataSet();

    
    SqlCommand cmd3 = new SqlCommand();
    SqlDataReader dr3;
 

    double cost;
    string date11;
    string cust_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"] != null)
        {
            cust_id = Session["Customer_id"].ToString();
            cost = Double.Parse(Request.QueryString["cost"]);
            Label14.Text = "Cost:" + Request.QueryString["cost"] + " R.O";
            //Label14.Text = Session["date"].ToString();
            if (!string.IsNullOrEmpty(Session["date"] as string))
            {
                string date1 = Session["date"].ToString();
                date11 = date1.Substring(11);
                Label13.Text = date11;
            }
            else
            {
                Session["date"] = "Not Specify";
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
       

    }



    protected void SubmitBTN_Click(object sender, EventArgs e)
    {


        // Session["price"] = TextBox3.Text;
        if(Session["username"] != null) // check if the user is logged already or not
            {
        if (checkFields())
            {
            // move to another page or show a notification to the user

                cmd.Connection = con;
                string id = Session["id"].ToString();
                int Room_ID = Int16.Parse(id);
                Label13.Text = "";
                cmd.CommandText = "Insert Into Booking (cost,date,Room_id,Cust_id) Values(' " + cost + " ',' "  + date11 +" ',' "+Room_ID+" ',' "+cust_id+"')";
                con.Open();
               int flag = cmd.ExecuteNonQuery();
                con.Close();

                if(flag != 0)
                {

                    cmd3.Connection = con;
                    cmd.CommandText = "Select Booking_Id from Booking where Cust_id="+cust_id+ " order by Booking_Id desc";
                    con.Open();
                    dr3 = cmd.ExecuteReader();
                    if(dr3.Read())
                    {
                        string bookid = dr3[0].ToString();
                        int bid = Int16.Parse(bookid);
                        Int64 cardNo = Int64.Parse(TextBox2.Text);
                        string dt = DateTime.Now.ToString();
                        cmd2.Connection = con2;
                        cmd2.CommandText = "Insert Into Payment (pdate,price,Booking_ID) Values(' " + dt + " ',' " + cost + " ',' " +bid+ " ')";
                        con2.Open();
                        cmd2.ExecuteNonQuery();
                        con2.Close();
                        System.Threading.Thread.Sleep(1000);
                        Label13.Text = "Insert complete!";
                        System.Threading.Thread.Sleep(1000);
                        Session["Done"] = "Done";
                        Response.Redirect("Default.aspx?cost=Done");

                    }
                    con.Close();

                 
                }
               


                

          


            //Label13.Text = Session["date"].ToString();
        }
        else
            {

                return;
            }

           }
            else
            {
            // send user to login page
           Response.Redirect("Login.aspx");
            }
        

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


    
