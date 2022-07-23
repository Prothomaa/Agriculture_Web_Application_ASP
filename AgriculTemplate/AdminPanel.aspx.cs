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
    public partial class AdminPanel : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if(!IsPostBack)
            {
                bindGridView();
            }*/
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterName")).Text;
            SqlDataSource1.InsertParameters["type"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("FooterDdlType")).SelectedValue;
            SqlDataSource1.InsertParameters["details"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("FooterClass")).Text;

            int a = SqlDataSource1.Insert();

            if(a>0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert ('Insertion Successful ')</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert ('Insertion Failed !! ')</script>");

            }

           
        }
        /*
                void bindGridView()
                {
                    //string conn = SqlDataSource1.
                    SqlConnection con = new SqlConnection(cs);
                    string query = "select * from Product";
                    SqlDataAdapter sda = new SqlDataAdapter(query, con);

                    DataTable data = new DataTable();
                    sda.Fill(data);
                    GridView1.DataSourceID = SqlDataSource1;
                    GridView1.DataBind();
                }
                void SearchDataSeed()
                {
                    SqlConnection con = new SqlConnection(cs);
                    string query = "select * from Product where details =@Seeds";
                    SqlDataAdapter sda = new SqlDataAdapter(query, con);
                    sda.SelectCommand.Parameters.AddWithValue("@Seeds" , SeedRadioButton.Text);
                    DataTable data = new DataTable();
                    sda.Fill(data);
                    //GridView1.DataSource = data;
                    GridView1.DataBind();
                }
                void SearchDataPlant()
                {
                    SqlConnection con = new SqlConnection(cs);
                    string query = "select * from Product where details =@Plants";
                    SqlDataAdapter sda = new SqlDataAdapter(query, con);
                    sda.SelectCommand.Parameters.AddWithValue("@Plants", PlantRadioButton.Text);
                    DataTable data = new DataTable();
                    sda.Fill(data);
                    //GridView1.DataSource = data;
                    GridView1.DataBind();
                }
                void SearchDataFerti()
                {
                    SqlConnection con = new SqlConnection(cs);
                    string query = "select * from Product where details =@Fertilizers";
                    SqlDataAdapter sda = new SqlDataAdapter(query, con);
                    sda.SelectCommand.Parameters.AddWithValue("@Fertilizers", FertiRadioButton.Text);
                    DataTable data = new DataTable();
                    sda.Fill(data);
                    //GridView1.DataSource = data;
                    GridView1.DataBind();
                }


                protected void SearchButton1_Click(object sender, EventArgs e)
                {

                    string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection sqlcon = new SqlConnection(cs);
                    sqlcon.Open();
                    SqlCommand cmd = new SqlCommand();
                    string query = "select * from Product where name like '%'+@name+'%'";
                    cmd.CommandText = query;
                    cmd.Connection = sqlcon;
                    cmd.Parameters.AddWithValue("name", SearchTextBox.Text);




                     if(SeedRadioButton.Checked == true)
                     {
                         SearchDataSeed();
                     }
                     else if(PlantRadioButton.Checked == true)
                     {
                         SearchDataPlant();
                     }
                     else if (FertiRadioButton.Checked == true)
                     {
                         SearchDataFerti();
                     }
                     else if (AllRadioButton.Checked == true)
                     {
                         bindGridView();
                     }
                     else
                     {
                         Response.Write("<script>alert('Please select one')</script>");
                     }


                }
         */
    }
}