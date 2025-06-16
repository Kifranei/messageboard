using System;

namespace messageboard.admin
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Write("<script>alert('请先登录管理员账号！');window.location='login.aspx';</script>");
                Response.End();
                return;
            }
            // 可在此处添加管理员身份校验逻辑
        }
    }
}
