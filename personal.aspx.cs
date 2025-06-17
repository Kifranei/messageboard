using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard
{
    public partial class personal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 只校验Session，不再强制要求URL参数，保证登录后跳转不会掉登录
            if (Session["username"] == null || Session["userid"] == null)
            {
                Response.Write("<script>alert('请先登录！');window.location='Default.aspx';</script>");
                Response.End();
                return;
            }
            if (!IsPostBack)
            {
                // 优先用Session中的userid
                string uid = Session["userid"]?.ToString();
                DBClass db1 = new DBClass();
                string strsql = "select * from register where id = " + uid;
                DataTable dt = db1.GetRecords(strsql);
                if (dt != null && dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];
                    Label4.Text = dr["username"].ToString();
                    Label5.Text = dr["sex"].ToString();
                    Label6.Text = dr["QQ"].ToString();
                    Label7.Text = dr["information"].ToString();
                    Label8.Text = dr["others"].ToString();
                    // 查询留言数
                    string msgSql = "select count(*) from gbook where userid = " + uid;
                    DataTable msgDt = db1.GetRecords(msgSql);
                    Label9.Text = msgDt.Rows[0][0].ToString();
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // 只用Session中的userid
            string uid = Session["userid"]?.ToString();
            if (string.IsNullOrEmpty(uid))
            {
                Response.Redirect("login.aspx");
                return;
            }
            Response.Redirect("modi.aspx?uid=" + uid);
        }
    }
}