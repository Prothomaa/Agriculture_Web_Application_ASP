using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AgriculTemplate
{
    public partial class Login2 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                {
                    txtUserName.Text = Request.Cookies["username"].Value;
                    txtPWD.Attributes["value"] = Request.Cookies["password"].Value;
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            string query = "select * from Register where username = @user and password = @pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", txtUserName.Text);
            cmd.Parameters.AddWithValue("@pass", txtPWD.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                if(ChkMe.Checked)
                {
                    Response.Cookies["username"].Value = txtUserName.Text;
                    Response.Cookies["password"].Value = txtPWD.Text;
                    Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(1);

                }
                else
                {
                    Response.Cookies["username"].Expires = DateTime.Now.AddMinutes(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-1);

                }

                Session["user"] = txtUserName.Text;            
                //Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts", "<scripts>alert('Login Successful !!')</scripts>" , true );
                Response.Redirect("Index2.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!')</script>");

            }
            con.Close();

        }


    }
}