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
            try
            {
                string strSql = "insert into gbook (title, name, time, contents, admin, reptime, repcontent, classid, userid) values ('"
                    + TextBox2.Text + "','"
                    + Session["username"].ToString() + "','"
                    + DateTime.Now + "','"
                    + TextBox1.Text + "','"
                    + "" + "','" // admin
                    + "" + "','" // reptime
                    + "" + "','" // repcontent
                    + Request.QueryString["cid"] + "','"
                    + Session["userid"].ToString() + "')";
                db1.ExecuteSql(strSql);
            }
            catch (Exception ex)
            {
                // 可根据需要将错误信息显示到页面或写入日志
                Response.Write("<script>alert('留言失败：" + ex.Message + "');</script>");
                return;
            }
            Response.Redirect("Gbook.aspx?cid=" + Request.QueryString["cid"]);
        }
    }
}