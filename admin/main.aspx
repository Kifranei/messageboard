<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="messageboard.admin.main" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>管理员管理中心</title>
<style type="text/css">
    .admin-main-box {
        width: 500px;
        margin: 60px auto;
        background: #f4f8fb;
        border-radius: 10px;
        box-shadow: 0 2px 12px #b3c6e0;
        padding: 36px 38px 28px 38px;
        text-align: center;
    }
    .admin-main-title {
        font-size: 24px;
        font-weight: bold;
        color: #1565c0;
        margin-bottom: 30px;
    }
    .admin-main-btns a {
        display: inline-block;
        margin: 0 18px 18px 18px;
        padding: 12px 36px;
        border-radius: 6px;
        background: #1976d2;
        color: #fff;
        font-size: 18px;
        text-decoration: none;
        transition: background 0.2s;
    }
    .admin-main-btns a:hover {
        background: #0d47a1;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="admin-main-box">
            <div class="admin-main-title">后台管理中心</div>
            <div class="admin-main-btns">
                <a href="usermanage.aspx">用户管理</a>
            </div>
            <div style="margin:30px 0;">
            </div>
        </div>
    </form>
</body>
</html>
