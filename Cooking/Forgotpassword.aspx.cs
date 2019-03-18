using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Net.Mail;
using System.Net;

namespace Cooking
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cooking"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand("select Username, Password from Cooking where Email=@email", con);
            cmd.Parameters.AddWithValue("Email", txtEmail.Text);
            con.Open();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    txtUsername.Text = sdr["Username"].ToString();
                    txtPassword.Text = sdr["Password"].ToString();

                }

            }
            con.Close();

            if (!string.IsNullOrEmpty(txtPassword.Text))
            {
                try { 
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("swankinnovations122@gmail.com"); //your email id
                msg.To.Add(txtEmail.Text);
                msg.Subject = " Recover your Password";
                msg.Body = ("Your Username is:" + txtUsername.Text + "<br/><br/>" + "Your Password is:" + txtPassword.Text);
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential
                {
                    UserName = "swankinnovations122@gmail.com",//Your Email ID  
                    Password = "Swank123" // Your Password 
                };

                smt.UseDefaultCredentials = false;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                lblmsg.Text = "Mail Send Successfully";
                }
                catch(Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
                
            else
            {
                lblmsg.Text = "Mail Not registered";
            }
            txtEmail.Text = "";

        }




    }
}
