using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard.admin
{
    public partial class reply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DBClass db1 = new DBClass();
            string strsql = "update gbook set repcontent='" + TextBox3.Text + "',reptime='" + DateTime.Now + "',admin = '"+ Session["admin"].ToString()+"'where id = ' " +Request.QueryString["id"] +"'";
            db1.ExecuteSql(strsql);
            Response.Redirect("Gbook.aspx?cid=" + Request.QueryString["cid"] + "");
        }
    }
}