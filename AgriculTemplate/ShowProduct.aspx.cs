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
    public partial class ShowProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}