﻿using System;
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
    public partial class Order : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                /*
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "Select * from [user]";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                table.Append("<table border = '1' cellpadding = '4px' cellspacing = '4px' border-collapse= '1'");
                table.Append("<tr><th>Id</th><th>Order name</th><th>Phone</th><th>Email</th><th>Product Name</th><th>Product Type</th>");
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
                        table.Append("<td>" + rd[4] + "</td>");
                        table.Append("<td>" + rd[5] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
                */
                GridView1.DataSource = (DataSet)Session["sCart"];
                GridView1.DataBind();
            }
        }
    }
}