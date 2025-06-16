using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard
{
    public partial class modi : System.Web.UI.Page
    {
        DBClass db1 = new DBClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string uid = Request.QueryString["uid"];
                if (string.IsNullOrEmpty(uid) || !int.TryParse(uid, out _))
                {
                    Response.Write("<script>alert('参数错误，无法获取用户ID');window.location='login.aspx';</script>");
                    Response.End();
                    return;
                }
                string strsql = "select * from register where id=" + uid;
                DataTable dt = db1.GetRecords(strsql);
                if (dt.Rows.Count == 0)
                {
                    Response.Write("<script>alert('未找到该用户');window.location='login.aspx';</script>");
                    Response.End();
                    return;
                }
                Label4.Text = dt.Rows[0]["username"].ToString();
                TextBox1.Text = dt.Rows[0]["password"].ToString();
                DropDownList1.SelectedItem.Text = dt.Rows[0]["sex"].ToString();
                TextBox4.Text = dt.Rows[0]["QQ"].ToString();
                TextBox5.Text = dt.Rows[0]["information"].ToString();
                TextBox6.Text = dt.Rows[0]["others"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strsql;
            if (!String.IsNullOrEmpty(TextBox2.Text))
            {
                strsql = "update register set password='" + TextBox2.Text + "',sex='" + DropDownList1.SelectedItem.Text + "',QQ='" + TextBox4.Text + "',information='" + TextBox5.Text + "',others='" + TextBox6.Text + "' where id=" + Request.QueryString["uid"];
                db1.ExecuteSql(strsql);
                Response.Write("<script>alert('修改成功！');)</script>");
            }
            else
            {
                strsql = "update register set sex='" + DropDownList1.SelectedItem.Text + "',QQ='" + TextBox4.Text + "',information='" + TextBox5.Text + "',others='" + TextBox6.Text + "' where id=" + Request.QueryString["uid"] + "";
            }
            db1.ExecuteSql(strsql);
            Response.Redirect("personal.aspx?uid=" + Request.QueryString["uid"]);
        }
    }
}