using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Cooking
{
    public partial class Myaccount : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);
        int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                autoincrement();
              

            }

        }
        public void autoincrement()
        {
            string str = "select count (*) from Cooking";
            SqlCommand cmd = new SqlCommand(str, con);
            con.Open();
            count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
            txtCustomerid.Text = "0" + count;
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            insertion();
            
           

        }

        private void cheking()
        {
            lblmsg.Text = "";
            SqlCommand com1 = new SqlCommand("select * from Cooking where Username=@user", con);
            com1.Parameters.AddWithValue("@user", txtUsername.Text);
            SqlDataAdapter sda1 = new SqlDataAdapter(com1);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            con.Open();
            int i = com1.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                lblmsg.Text = "Username Already Exists";

            }
            else
            {

               
            }
           
        }

        private void insertion()
        {
            SqlCommand cmd = new SqlCommand("insert into Cooking(Customerid,Customername,Gender,Mobileno,Email,City,Pincode,Username,Password,Conformpassword,Address) values('" + txtCustomerid.Text + "','" + txtCustomername.Text + "','" + ddlGender.SelectedValue.ToString() + "','" + txtMbleno.Text + "','" + txtEmail.Text + "','" + txtCity.Text + "','" + txtPincode.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtConformpassword.Text + "','" + txtAddress.Text + "')", con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            autoincrement();
            if (i == 1)
            {
                
                txtAddress.Text = "";
                txtCity.Text = "";
                txtConformpassword.Text = "";
                txtCustomername.Text = "";
                txtEmail.Text = "";
                txtMbleno.Text = "";
                txtPassword.Text = "";
                txtPincode.Text = "";
                txtUsername.Text = "";

            }

        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {
            cheking();
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {
            emailchecking();
        }

        private void emailchecking()
        {
            SqlCommand com1 = new SqlCommand("select * from Cooking where Email=@user", con);
            com1.Parameters.AddWithValue("@user", txtEmail.Text);
            SqlDataAdapter sda1 = new SqlDataAdapter(com1);
            DataTable dt = new DataTable();
            sda1.Fill(dt);
            con.Open();
            int i = com1.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                lblmsg1.Text = "email Already Exists";

            }
            else
            {
                lblmsg1.Text = "";
                
            }
        }
    }
}