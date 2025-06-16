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
            if (Session["admin"] == null)
            {
                Response.Write("<script>alert('请先登录管理员账号');window.location='login.aspx';</script>");
                return;
            }
            if (Request.QueryString["id"] == null)
            {
                Response.Write("<script>alert('参数错误，缺少留言ID');window.location='Gbook.aspx';</script>");
                return;
            }
            DBClass db1 = new DBClass();
            string strsql = "update gbook set repcontent='" + TextBox3.Text.Replace("'", "''") + "',reptime='" + DateTime.Now + "',admin='" + Session["admin"].ToString() + "' where id=" + Request.QueryString["id"];
            db1.ExecuteSql(strsql);
            Response.Redirect("Gbook.aspx");
        }
    }
}