﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cooking
{
    public partial class Viewincorrectrecipe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ida"] != null)
            {

            }
            else
            {
                Response.Redirect("Home.aspx");

            }
        }
    }
}