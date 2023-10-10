using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Life_Management
{
    public partial class Login : System.Web.UI.Page
    {
        readonly string connString = ConfigurationManager.ConnectionStrings["lifemgDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using(SqlConnection sql = new SqlConnection(connString))
            {
                string query = "select userName,password from MasterUser where userName = @username and password = @password";
                SqlCommand cmd = new SqlCommand(query, sql);
                cmd.Parameters.AddWithValue("@username", txtusername.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                
                sql.Open();
                SqlDataReader sqlData = cmd.ExecuteReader();
                if(sqlData.HasRows)
                {
                    Response.Redirect("temp.aspx");
                }
                else
                {
                    panelError.Visible = true;
                    lblLoginError.Enabled = true;
                    lblLoginError.Visible = true;
                }
                
            }
        }
    }
}