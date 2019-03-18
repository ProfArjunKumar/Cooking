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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
          if(!IsPostBack)
            {
                bind();            

                
            }
        }


        private void bind()
        {
            SqlDataAdapter adpt = new SqlDataAdapter("select * from Postrecipe where Status='Publish'", con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("Homerecipes.aspx?id=" + e.CommandArgument.ToString());

        }

        
    }
}