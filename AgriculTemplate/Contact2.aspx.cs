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
    public partial class Contact2 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            GridView1.DataSource = (DataSet)Session["sCart"];
            GridView1.DataBind();

        }
/*
        protected void OrderButton1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Product,Register where name = @productname and type = @productype and email = @email";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", OrderNameTextBox1.Text);
            cmd.Parameters.AddWithValue("@phone", OrderPhnTextBox2.Text);
            cmd.Parameters.AddWithValue("@email", OrderEmailTextBox3.Text);
            cmd.Parameters.AddWithValue("@productname", OrderProductNameTextBox4.Text);
            cmd.Parameters.AddWithValue("@productype", OrderProductTypeTextBox5.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                con.Close();
                SqlConnection con1 = new SqlConnection(cs);
                con1.Open();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Ordered !!')</script>");
                SqlCommand cmd1 = new SqlCommand( "insert into [user] values ('"+ OrderNameTextBox1.Text+ "', '"+ OrderPhnTextBox2.Text + "', '" + OrderEmailTextBox3.Text + "',  '" + OrderProductNameTextBox4.Text + "',  '" + OrderProductTypeTextBox5.Text + "')" , con1);
                cmd1.ExecuteNonQuery();
                
                con1.Close();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Order Failed !!')</script>");
                con.Close();
            }
           
        }
        void ClearControls()
        {
            OrderNameTextBox1.Text = OrderPhnTextBox2.Text = OrderEmailTextBox3.Text = OrderProductNameTextBox4.Text = OrderProductTypeTextBox5.Text="";
           
        }

        protected void CartButton2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from user,Register where email= @email ";
            SqlCommand cmd = new SqlCommand(query, con);

            Session["username"] = OrderNameTextBox1.Text;
            Session["phone"] = OrderPhnTextBox2.Text;
            Session["email"] = OrderEmailTextBox3.Text;
            Session["proname"] = OrderProductNameTextBox4.Text;
            Session["type"] = OrderProductTypeTextBox5.Text;

            Response.Redirect("ShowCart.aspx");
            ClearControls();
        }*/
    }
}

