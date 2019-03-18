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
    public partial class Addkeyword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ida"] != null)
            {
                if (!Page.IsPostBack)
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
            DataList1.DataBind();
        }
        protected void DataList1_OnItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Publish")
            {

                int id = Convert.ToInt32(e.CommandArgument.ToString());
                SqlCommand com = new SqlCommand("update Postrecipe set Status='Publish' where Id='" + id + "'", con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                bind();
            }
            else if (e.CommandName=="Reject")
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                SqlCommand com = new SqlCommand("update Postrecipe set Status='Reject' where Id='" + id + "'", con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                bind();
            }
            else if (e.CommandName=="keyword")
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                TextBox tb = (TextBox)e.Item.FindControl("txtadd");
                SqlCommand com = new SqlCommand("update  Postrecipe set Addkeywords='"+tb.Text.Replace("'", "''") + "' where Id='" + id + "' ", con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                bind();

            }
            else if (e.CommandName== "delete")
            {

                int id = Convert.ToInt32(e.CommandArgument.ToString());
               
                SqlCommand com = new SqlCommand("delete  Postrecipe  where Id='" + id + "' ", con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                bind();
            }
            
        }
    }
}