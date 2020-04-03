using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    double vv1 = 0, vv2 = 0, vv3 = 0, tot = 0, temp = 0;
    int id;
    string cust_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"] != null)
        {

            Label1.Text = "Welcome " + Session["username"];

            cust_id = Session["Customer_id"].ToString();


        }
        else
        {
            Response.Redirect("Login.aspx");
        }

        if (!string.IsNullOrEmpty(Session["Done"] as string))
        {
          //  Response.Write("<script>alert('Success Payment')</script>");
            Label13.Text = "Success Payment";

        }
      
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader dr;

        // label_discount.Text = "";
        Label9.Text = "choose the date!";

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Image2.ImageUrl = "~/pic/" + DropDownList1.SelectedItem.Value +".jpg";
    }

    /*protected void Button_discount_Click(object sender, EventArgs e)
    {
        if (TextBox_discount.Text == "123")
        {
            label_discount.Text = "Accepted";
        }
        else {
            label_discount.Text = "Not accepted";

        }
    }*/

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate.ToShortDateString() != "" && Calendar2.SelectedDate.ToShortDateString() != "")
        {
            Session["date"] = Label9.Text = "You booked from " + Calendar1.SelectedDate.ToShortDateString() + " TO " + Calendar2.SelectedDate.ToShortDateString();
            
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader dr;
        
        bool a, b, c;
        string v1 = "", v2 = "", v3 = "";
        if (CheckBox1.Checked || CheckBox2.Checked || CheckBox3.Checked)
        {
            a = CheckBox1.Checked;
            b = CheckBox2.Checked;
            c = CheckBox3.Checked;
            //Label13.Text = "a= " + a.ToString() + "   b= "+b.ToString()+"    c= "+c.ToString();
            if (a == true)
            {


                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Price21";
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = 1;
                id = 1;
                //cmd.Parameters.Add("@id", SqlDbType.Decimal).Value = 0;
                con.Open();
                //cmd.ExecuteNonQuery();
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    v1 = dr["price"].ToString();
                }

                con.Close();
                dr.Close();
                //    Label13.Text=v1.ToString();
            }
            if (b == true)
            {
                SqlConnection con2 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                SqlCommand cmd2 = new SqlCommand();
                SqlDataReader dr2;


                cmd2.Connection = con2;
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.CommandText = "Price21";
                cmd2.Parameters.Add("@id", SqlDbType.Int).Value = 2;
                id = 2;
                //cmd.Parameters.Add("@id", SqlDbType.Decimal).Value = 0;
                con2.Open();
                //cmd.ExecuteNonQuery();
                dr2 = cmd2.ExecuteReader();
                if (dr2.Read())
                {
                    v2 = dr2["price"].ToString();
                }

                con2.Close();
                dr2.Close();
                //    Label13.Text = v2.ToString();
            }
            if (c == true)
            {
                SqlConnection con3 = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
                SqlCommand cmd3 = new SqlCommand();
                SqlDataReader dr3;
                cmd3.Connection = con3;
                cmd3.CommandType = CommandType.StoredProcedure;
                cmd3.CommandText = "Price21";
                cmd3.Parameters.Add("@id", SqlDbType.Int).Value = 3;
                id = 3;
                //cmd.Parameters.Add("@id", SqlDbType.Decimal).Value = 0;
                con3.Open();
                //cmd.ExecuteNonQuery();
                dr3 = cmd3.ExecuteReader();
                if (dr3.Read())
                {
                    v3 = dr3["price"].ToString();
                }

                con3.Close();
                dr3.Close();
                // Label13.Text = v3.ToString();
            }
        }


        
        if (double.TryParse(v1, out vv1)) {
            vv1 = Double.Parse(v1) + 0;
        }


        if (double.TryParse(v2, out vv2))
        {
            vv2 = Double.Parse(v2) ;
        }

        if (double.TryParse(v3, out vv3))
        {
            vv3 = Double.Parse(v3) ;
        }
      //  vv1 = Double.Parse(v1) + 0;
      //  vv2 += Double.Parse(v2) + 0;
      //      vv3 += Double.Parse(v3) + 0;
            vv1 *= Double.Parse(DropDownList2.SelectedValue);
            vv2 *= Double.Parse(DropDownList3.SelectedValue);
            vv3 *= Double.Parse(DropDownList4.SelectedValue);

        
        if (Calendar2.SelectedDate.ToShortDateString() == "")
        {
            Label13.Text = "Choose the date !";

        }
        else
        {
            if (TextBox5.Text == "123")
            {
                tot = vv1 + vv2 + vv3;
                temp = tot * 0.10;
                tot -= temp;
            }
            else
            {
                tot = vv1 + vv2 + vv3;

            }
            if (tot > 0)
            {
                
                    Label13.Text = tot.ToString();
                    Session["Done"] = "";
                    Session["id"] = id;
                    Session["Customer_id"] = cust_id;
                    Response.Redirect("paymentForm.aspx?cost=" + tot);
             
            }
            else
            {
                Label13.Text = "Choose a plan !";
            }
        }
      
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }



    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if(Menu1.SelectedValue == "Logout")
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        
    }



    protected void sendNotification(string name,string phone,string email,string contact)
    {

        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        smtpClient.TargetName = "STARTTLS/smtp.gmail.com";
        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtpClient.UseDefaultCredentials = false;
        smtpClient.EnableSsl = true;
        MailMessage mailMessage = new MailMessage("meow17033@gmail.com", "meow17033@gmail.com");
        mailMessage.Subject = "Contact us";
        mailMessage.Body = "Name:"+name+"\nPhone:"+phone+"\nEmail:"+email+ "\nContact:"+contact;
        smtpClient.Credentials = new System.Net.NetworkCredential("meow17033@gmail.com", "A12345678-hct");
        try
        {
            smtpClient.Send(mailMessage);


        }
        catch (Exception ex)
        {
            ex.GetBaseException();

        }


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string name, phone, email, contact;
        name = TextBox2.Text;
        phone = TextBox3.Text;
        email = TextBox4.Text;
        contact = TextBox1.Text;
        sendNotification(name, phone, email, contact);
        Response.Write("<script>alert('Sent Successfully')</script>");


    }
}