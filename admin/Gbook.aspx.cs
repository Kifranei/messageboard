using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard.admin
{
    public partial class Gbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Reply")
            {
                int rowIndex = Convert.ToInt32(((GridViewRow)((Button)e.CommandSource).NamingContainer).RowIndex);
                GridViewRow row = GridView1.Rows[rowIndex];
                string reply = ((TextBox)row.FindControl("txtReply")).Text.Trim();
                string id = e.CommandArgument.ToString();
                string admin = Session["admin"] != null ? Session["admin"].ToString() : "admin";
                SqlDataSource1.UpdateParameters.Clear();
                SqlDataSource1.UpdateParameters.Add("repcontent", reply);
                SqlDataSource1.UpdateParameters.Add("reptime", DateTime.Now.ToString());
                SqlDataSource1.UpdateParameters.Add("admin", admin);
                SqlDataSource1.UpdateParameters.Add("id", id);
                SqlDataSource1.Update();
                GridView1.DataBind();
            }
        }
    }
}