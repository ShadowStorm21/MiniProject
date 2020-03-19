using System;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace MiniProject
{
    public partial class Registration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        SqlDataAdapter dataAdapter = new SqlDataAdapter();
        DataSet dataSet = new DataSet();

        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack != true)
            FillCapctha();
        }


        protected void FillCapctha()

        {

            try

            {

                Random random = new Random();

                string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

                StringBuilder captcha = new StringBuilder();

                for (int i = 0; i < 6; i++)
                {

                    captcha.Append(combination[random.Next(combination.Length)]);
                    Session["captcha"] = captcha.ToString();

                    Image1.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();

                }

            }

            catch (Exception e)

            {

                

            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {


            if (IsPostBack == true)
            {


               
                    if (Session["captcha"].ToString() != TextBox4.Text)

                        Label7.Text = "Invalid Captcha Code";

                    else

                    {
                        string UserName = TextBox1.Text;
                        cmd.Connection = con;
                        con.Open();
                        cmd.CommandText = "select Username from Users where Username='" + UserName + "'";
                        dataAdapter.SelectCommand = cmd;
                        dataAdapter.Fill(dataSet);
                        if(dataSet.Tables[0].Rows.Count == 0)
                        {
                            Label7.Text = "";
                            string Password = TextBox6.Text;

                             string FirstName = TextBox5.Text;

                            string Email = TextBox2.Text;

                            string Phoneno = TextBox3.Text;

                            string Location = DropDownList1.SelectedItem.Text;


                            cmd.Connection = con;
                            
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.CommandText = "Register";

                            cmd.Parameters.AddWithValue("@Username", UserName);

                            cmd.Parameters.AddWithValue("@Password", Password);

                            cmd.Parameters.AddWithValue("@Firstname", FirstName);

                            cmd.Parameters.AddWithValue("@Email", Email);

                            cmd.Parameters.AddWithValue("@PhoneNo", Phoneno);

                            cmd.Parameters.AddWithValue("@Location", Location);
                            cmd.ExecuteNonQuery();

                            Response.Redirect("Login.aspx");
                            con.Close();
                        }
                        else
                        {
                            Label7.Text = UserName + " Already Exists";
                        }


                        con.Close();

                    }
                }
            
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            FillCapctha();
        }



    }
    }

    

