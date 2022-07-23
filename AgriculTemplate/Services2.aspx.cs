using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AgriculTemplate
{
    public partial class Services2 : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        private object sqlDbType;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                this.BindGrid();
            }

            /*
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select * from Product";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border = '1' cellpadding = '4px' cellspacing = '4px' border-collapse= '1'");
                table.Append("<tr><th>Id</th><th>name</th><th>type</th><th>details</th>");
                table.Append("</tr>");

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        table.Append("<td>" + rd[3] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                GridView1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
            }

          */

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            DataSet ds = null;
            if (Session["sCart"] == null)
            {
                ds = new DataSet();
                DataTable dt = new DataTable();
                dt.Columns.Add(new DataColumn("name"));
                dt.Columns.Add(new DataColumn("Qty", typeof(System.Int32)));
                ds.Tables.Add(dt);
                Session["sCart"] = ds;
            }
            else
            {
                ds = (DataSet)Session["sCart"];
            }
            DataRow row = ds.Tables[0].NewRow();
            row["name"] = GridView1.Rows[GridView1.SelectedIndex].
                Cells[0].Text;
            row["Qty"] = 1;
            ds.Tables[0].Rows.Add(row);
        }


        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT name, type FROM Product"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
        }
        /*
protected void SearchButton_Click(object sender, EventArgs e)
{
   string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
   SqlConnection con = new SqlConnection(cs);
   string find = "select * from Product where (name like '%' +@name+ '%' )";
   SqlCommand comm = new SqlCommand(find,con);

   comm.Parameters.Add("@name" , sqlDbType.GetTyp);

}
*/
    }
}