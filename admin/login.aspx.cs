﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBClass db1 = new DBClass();
            string strsql = "select * from admin where adminname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            DataTable dt = db1.GetRecords(strsql);
            if (dt != null && dt.Rows.Count == 1)
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("main.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误！');window.location.href = '../admin/login.aspx'</script>");
            }
        }
    }
}