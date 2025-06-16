using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard.admin
{
    public partial class usermanage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Write("<script>alert('请先登录管理员账号！');window.location='login.aspx';</script>");
                Response.End();
                return;
            }
        }
    }
}