using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard
{
    public partial class Gbook : System.Web.UI.Page
    {
        DBClass db1 = new DBClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string strSql = "insert into gbook (title, name, time, contents, admin, reptime, repcontent, classid, userid) values ('" + TextBox2.Text + "','" + Session["username"].ToString() + "','" + DateTime.Now + "','" + TextBox1.Text + "','" + DateTime.Now + "','','" + Request.QueryString["cid"] + "','" + Session["userid"].ToString() + "')";
            db1.ExecuteSql(strSql);
            Response.Redirect("Gbook.aspx?cid=" + Request.QueryString["cid"]);
        }
    }
}