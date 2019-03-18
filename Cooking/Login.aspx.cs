using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Cooking
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand("select * from Cooking where Username=@User and Password=@password", con);
            cmd.Parameters.AddWithValue("@User", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            SqlDataAdapter sdq = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sdq.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {

                Session["idu"] = txtUsername.Text;

                txtUsername.Text = "";
                txtPassword.Text = "";
                Response.Redirect("ViewRecipe.aspx");

            }
            else
            {
                SqlCommand cmd1 = new SqlCommand("select * from Adminlogin where Username=@User1 and Password=@password1", con);
                cmd1.Parameters.AddWithValue("@User1", txtUsername.Text);
                cmd1.Parameters.AddWithValue("@Password1", txtPassword.Text);
                SqlDataAdapter sd = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                sd.Fill(dt1);
                con.Open();
                int a = cmd1.ExecuteNonQuery();
                con.Close();
                if (dt1.Rows.Count > 0)
                {
                    Session["ida"] = txtUsername.Text;
                    txtUsername.Text = "";
                    txtPassword.Text = "";

                    Response.Redirect("reciepes.aspx");
                }
                else
                {
                    lblmsg.Text = "username/password incorrect";
                }
            }

        }





    }
}