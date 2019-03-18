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
    public partial class Adminviewrating2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Postrecipe INNER JOIN comment ON Postrecipe.Id = comment.recipeid", con);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                gridview1.DataSource = ds;
                gridview1.DataBind();

            }
        }
    }
}