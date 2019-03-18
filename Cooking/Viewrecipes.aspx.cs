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
    public partial class Viewrecipes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string recipeid = Request.QueryString["id"].ToString();


            SqlCommand com = new SqlCommand("insert into comment( recipeid,name,comment,rating) values('" + recipeid + "','" + Session["idu"].ToString() + "','" + txtcomment.Text + "','"+drprate.SelectedItem.ToString()+"')", con);
            con.Open();
            int i = com.ExecuteNonQuery();
            con.Close();
            if(i==1)
            {
                txtcomment.Text = "";
                lblmsg.Text = "Comment Send Sucessfully";
            }
            else
            {
                lblmsg.Text = "not Submited";
            }
        }
    }
}