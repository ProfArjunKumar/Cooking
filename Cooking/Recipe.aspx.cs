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
    public partial class Recipe : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    string id = Request.QueryString["id"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from Postrecipe where Id='" + id + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        lbltitle.Text = dr["Title"].ToString();
                        img1.ImageUrl = dr["Image"].ToString();
                        txtdes.Text = dr["Description"].ToString();

                    }
                    con.Close();

                }
            }
        }




        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string id1 = Request.QueryString["id"].ToString();
            SqlCommand cmd = new SqlCommand("select * from Cooking where username=@User and password=@password", con);
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

                Response.Redirect("Viewrecipes.aspx?id="+id1);

            }
        }
    }
}