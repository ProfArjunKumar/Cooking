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
    public partial class Viewrecipe : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idu"] != null)
            {
               
            }
            else
            {
                Response.Redirect("Home.aspx");

            }
        }

        private void Dataread()
        {
            //SqlCommand cmd = new SqlCommand("Select * from Postrecipe where ='" + Session["Id"].ToString() + "'", con);
            //con.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    lbRollnoid.Text = dr["Rollno"].ToString();
            //    lbNameid.Text = dr["Name"].ToString();
            //    lbMessageid.Text = dr["Message"].ToString();
            //    lbComplainaboutid.Text = dr["Complainabout"].ToString();
            //}
            //con.Close();
        }


        protected void btnsubmit_Click(object sender, EventArgs e)
        {

        }

      

        protected void datalist1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("Viewrecipes.aspx?id="+e.CommandArgument.ToString());

        }
    }
}