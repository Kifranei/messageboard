using System;
using System.Web.UI.WebControls;

namespace messageboard.admin
{
    public partial class main_gbook : System.Web.UI.UserControl
    {
        DBClass db1 = new DBClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGbook();
            }
        }
        private void BindGbook()
        {
            string sql = "SELECT id, username, title, contents, time FROM gbook ORDER BY id DESC";
            GridViewGbook.DataSource = db1.GetRecords(sql);
            GridViewGbook.DataBind();
        }
        protected void GridViewGbook_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Reply")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect($"reply.aspx?id={id}");
            }
            if (e.CommandName == "Delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                db1.ExecuteSql($"DELETE FROM gbook WHERE id={id}");
                BindGbook();
            }
        }
    }
}
