using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace Cooking
{

    public partial class Postrecipe : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idu"] != null)
            {
                if (!IsPostBack)
                {
                    bind();
                }
            }
            else
            {
                Response.Redirect("Home.aspx");

            }


        }
        private void bind()
        {
            SqlCommand com = new SqlCommand("select * from Cooking where Username='" + Session["idu"].ToString() + "'", con);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                lbCustomerid.Text = dr["Username"].ToString();
                lbMobileno.Text = dr["Mobileno"].ToString();

            }
            con.Close();


        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {


            string str = FileUpload1.FileName;
            
            if (str == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('select the image')</script>");
            }
            else
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload1/" + str));
                string Image = "~/Upload1/" + str.ToString();
                

                SqlCommand cmd = new SqlCommand("insert into Postrecipe(Image,Title,Description,Customerid,Mobileno,category) Values ('" + Image + "','" + txtTitle.Text + "','" + txtDescription.Text.Replace("'","''") + "','" + lbCustomerid.Text + "','" + lbMobileno.Text + "','"+drp1.SelectedItem.ToString()+"')", con);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();
                if (i == 1)
                {
                    txtDescription.Text = "";
                    txtTitle.Text = "";
                }
                else
                {

                }
            }
        }
    }
}