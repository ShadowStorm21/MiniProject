using System;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Data.Common;
using System.Text;

namespace MiniProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        SqlDataReader dataReader;
        SqlDataAdapter dataAdapter = new SqlDataAdapter();
        DataSet dataSet = new DataSet();

        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            


                string UserName = TextBox1.Text;
                string Password = TextBox2.Text;
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "select * from Users where Username='" + UserName + "' and Passowrd ='"+Password+"'";
            dataReader = cmd.ExecuteReader();

            if (dataReader.Read())
            {


                Session["username"] = UserName;
                Response.Redirect("MainPage.aspx");
                
            }
            else
            {
                Label1.Text = "Invalid Username / Password";

            }
            
                



        }
        

    }
    }