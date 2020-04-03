using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

public partial class Login : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");

    SqlDataReader dataReader;
    SqlDataAdapter dataAdapter = new SqlDataAdapter();
    DataSet dataSet = new DataSet();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected bool verfiyPassword(string DBpassword, string password)
    {
       
        string savedPasswordHash = DBpassword;
        byte[] hashBytes = Convert.FromBase64String(savedPasswordHash);
        byte[] salt = new byte[16];
        Array.Copy(hashBytes, 0, salt, 0, 16);
        var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 1000);
        byte[] hash = pbkdf2.GetBytes(20);
        for (int i = 0; i < 20; i++)
        {
            if (hashBytes[i + 16] != hash[i])
                return false;
            else
                
                return true;
        }

        return false;

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string UserName = TextBox1.Text;
        string Password = TextBox2.Text;
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select Customer_Id,Password from Customers where Username='" + UserName + "'";
        dataReader = cmd.ExecuteReader();

        if (dataReader.Read())
        {
            string mPassword = dataReader["Password"].ToString();
            
            if (verfiyPassword(mPassword, Password))
            {
                Session["username"] = UserName;
                Session["Customer_id"] = dataReader[0].ToString();
                 Response.Redirect("Default.aspx");
            }
            else
            {
                Label3.Text = "Invalid Username / Password";
            }


        }
        else
        {
            Label3.Text = "All fields are required!";

        }
    }
}