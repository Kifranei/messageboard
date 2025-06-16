<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usermanage.aspx.cs" Inherits="messageboard.admin.usermanage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>用户管理</title>
<style type="text/css">
    .admin-box {
        width: 700px;
        margin: 60px auto;
        background: #f4f8fb;
        border-radius: 10px;
        box-shadow: 0 2px 12px #b3c6e0;
        padding: 36px 38px 28px 38px;
    }
    .admin-title {
        font-size: 22px;
        font-weight: bold;
        text-align: center;
        margin-bottom: 30px;
        color: #1565c0;
        letter-spacing: 2px;
    }
    .admin-table {
        width: 100%;
        background: #fff;
        border-radius: 6px;
        box-shadow: 0 1px 4px #e3eaf2;
        padding: 10px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="admin-box">
            <div class="admin-title">用户管理</div>
            <div class="admin-table">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
