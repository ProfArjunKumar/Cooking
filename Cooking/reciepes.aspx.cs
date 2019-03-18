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
    public partial class reciepes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ida"] != null)
            {
                bind();


                keyword();
                keywordduplicate();
            }
            else
            {
                Response.Redirect("Home.aspx");

            }
        }

        private void keywordduplicate()
        {
            for (int i = 0; i < drpk.Items.Count; i++)
            {
                drpk.SelectedIndex = i;
                string str = drpk.SelectedItem.ToString();
                for (int counter = i + 1; counter < drpk.Items.Count; counter++)
                {
                    drpk.SelectedIndex = counter;
                    string compareStr = drpk.SelectedItem.ToString();
                    if (str == compareStr)
                    {
                        drpk.Items.RemoveAt(counter);
                        counter = counter - 1;
                    }
                }
            }
        }
        
        private void keyword()
        {
            string com = "Select * from Postrecipe";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            drpk.DataSource = dt;
            drpk.DataBind();
            drpk.DataTextField = "Addkeywords";
            drpk.DataValueField = "Addkeywords";
            drpk.DataBind();
            drpk.Items.Insert(0, new ListItem("--Select Keyword--", "0"));
        }

        private void bind()
        {
            SqlDataAdapter adpt = new SqlDataAdapter("select * from Postrecipe", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {

                int id = Convert.ToInt32(e.CommandArgument.ToString());

                SqlCommand com = new SqlCommand("delete  Postrecipe  where Id='" + id + "' ", con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                DataList1.DataBind();
            }

        }

        protected void drpk_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter adpt = new SqlDataAdapter("select * from Postrecipe where Addkeywords='" + drpk.SelectedItem.ToString() + "'", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter adpt = new SqlDataAdapter("select * from Postrecipe where category='" + ddl.SelectedItem.ToString() + "'", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}