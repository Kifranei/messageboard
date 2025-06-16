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
            if (Session["username"] == null || Session["userid"] == null)
            {
                Response.Write("<script>alert('请先登录！');window.location='Default.aspx';</script>");
                Response.End();
                return;
            }
        }
            

        protected void Button1_Click1(object sender, EventArgs e)
        {
            // 校验必填项
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                Response.Write("<script>alert('标题和内容不能为空！');</script>");
                return;
            }
            if (Session["username"] == null || Session["userid"] == null)
            {
                Response.Write("<script>alert('请先登录后再留言！');window.location='login.aspx';</script>");
                return;
            }
            // 获取分组id
            string classid = DropDownListClass.SelectedValue;
            if (string.IsNullOrEmpty(classid) || !int.TryParse(classid, out _))
            {
                Response.Write("<script>alert('请选择留言分组！');</script>");
                return;
            }
            try
            {
                string strSql = "insert into gbook (title, name, time, contents, admin, reptime, repcontent, classid, userid) values ('"
                    + TextBox1.Text.Replace("'", "''") + "','"
                    + Session["username"].ToString().Replace("'", "''") + "','"
                    + DateTime.Now + "','"
                    + TextBox2.Text.Replace("'", "''") + "','"
                    + "" + "','" // admin
                    + "" + "','" // reptime
                    + "" + "','" // repcontent
                    + classid + "','"
                    + Session["userid"].ToString() + "')";
                db1.ExecuteSql(strSql);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('留言失败：" + ex.Message + "');</script>");
                return;
            }
            Response.Redirect("Gbook.aspx?cid=" + classid);
        }
    }
}