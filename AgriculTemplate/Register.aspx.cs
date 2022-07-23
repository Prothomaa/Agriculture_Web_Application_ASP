using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AgriculTemplate
{
    public partial class Register : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkuser() == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Already Registered !! Use another user name')</script>");

            }
            else
            {



                SqlConnection con = new SqlConnection(cs);
                string query = "insert into register values (@username , @email , @password )";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                //cmd.Parameters.AddWithValue("@registrationAs", RadioButtonList1.SelectedItem.Value);

                con.Open();

                /*
                public static bool CheckUserName(string username)
                {
                    bool status = false;
                    string constr = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(constr))
                    {
                        using (SqlCommand cmd = new SqlCommand("CheckUserAvailability", conn))
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@UserName", username.Trim());
                            conn.Open();
                            status = Convert.ToBoolean(cmd.ExecuteScalar());
                            conn.Close();
                        }
                    }
                    return status;
                }*/

                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    ClientScript.RegisterStartupScript(typeof(Page), "script", "alert('Registered Successfully..Username is: " + UsernameTextBox.Text + " and Password is: " + PasswordTextBox.Text + " ');", true);
                    ClearControls();
                    Response.Redirect("Login2.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Registration Failed !!')</script>");
                }

                con.Close();
            }
        }

        void ClearControls()
        {
            UsernameTextBox.Text = EmailTextBox.Text = PasswordTextBox.Text = "";
            RadioButtonList1.ClearSelection();
        }
        private Boolean checkuser()
        {
            Boolean useravailabel = false;
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from register where username = '"+ UsernameTextBox.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                useravailabel = true;
            }

            con.Close();
            return useravailabel;


        }
    }
}