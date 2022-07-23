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
    public partial class OrderPage : System.Web.UI.Page
    {
        string Cn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Sel = "Select * from [Table]";
            SqlConnection Con = new SqlConnection(Cn);
            SqlCommand cmd = new SqlCommand(Sel, Con);
            Con.Open();
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Product Id", typeof(int)));
           // dt.Columns.Add(new DataColumn("PictureURL", typeof(string)));
            dt.Columns.Add(new DataColumn("Product Name", typeof(string)));
            dt.Columns.Add(new DataColumn("Product Type", typeof(string)));
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                DataRow dr = dt.NewRow();
                dr["Product Id"] = Convert.ToInt32(reader["Product Id"]);
                
                dr["Product Name"] = reader["Product Name"];
                dr["Product Type"] = reader["Product Type"];
                dt.Rows.Add(dr);
            }
            Con.Close();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}