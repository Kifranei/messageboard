using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace messageboard
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 跳转到seebook.aspx时只传分组id，不传用户id
            Response.Redirect("seebook.aspx?cid=" + DropDownList1.SelectedValue);
        }
    }
}