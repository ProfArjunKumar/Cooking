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
    public partial class Homerecipes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Postrecipe();

                comments();

            }

        }

        private void comments()
        {
            string id = Request.QueryString["id"].ToString();
            con.Open();
            string com = "Select * from comment where recipeid='"+id+"'";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            gridview1.DataSource = dt;
            gridview1.DataBind();

        }

        private void Postrecipe()
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