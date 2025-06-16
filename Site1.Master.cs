using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null || Session["userid"] == null)
            {
                Label1.Text = "<a href='login.aspx'>登录</a>";
                Label2.Text = "<a href='register.aspx'>注册</a>";
                Label3.Text = "<a href='./admin/login.aspx'>管理员登录</a>";
            }
            else
            {
                Label1.Text = $"你好 <a href='personal.aspx?uid={Request.QueryString["id"]}'>{Session["username"]}</a>";
                //Label2.Text = $"<a href='userindex.aspx?uid={Session["userid"]}&name={Session["username"]}'>查看留言</a>";
                Label2.Text = $"<a href='seebook.aspx?uid={Session["userid"]}'>查看留言</a>";
                Label3.Text = $"<a href='logout.aspx'>注销</a>";
            }
        }
    }
}