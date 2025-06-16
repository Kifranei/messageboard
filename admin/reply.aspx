<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reply.aspx.cs" Inherits="messageboard.admin.reply" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>回复留言</title>
<style type="text/css">
    .admin-box {
        width: 480px;
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
    .admin-row {
        margin: 18px 0 0 0;
        font-size: 16px;
        display: flex;
        align-items: flex-start;
    }
    .admin-label {
        color: #888;
        width: 90px;
        flex-shrink: 0;
        margin-top: 7px;
    }
    .admin-value {
        flex: 1;
    }
    .admin-value textarea, .admin-value input {
        width: 100%;
        padding: 7px 10px;
        border: 1px solid #90caf9;
        border-radius: 4px;
        font-size: 15px;
        background: #fff;
        box-sizing: border-box;
    }
    .admin-btns {
        text-align: center;
        margin-top: 30px;
    }
    .admin-btns input[type=submit], .admin-btns input[type=button], .admin-btns button, .admin-btns .aspNet-Button {
        margin: 0 10px;
        padding: 8px 28px;
        border-radius: 4px;
        border: none;
        background: #1976d2;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.2s;
    }
    .admin-btns input[type=submit]:hover, .admin-btns input[type=button]:hover, .admin-btns button:hover, .admin-btns .aspNet-Button:hover {
        background: #0d47a1;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="admin-box">
            <div class="admin-title">回复留言</div>
            <div class="admin-row">
                <span class="admin-label">内容：</span>
                <span class="admin-value">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="180px"></asp:TextBox>
                </span>
            </div>
            <div class="admin-btns">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="回复留言" CssClass="aspNet-Button" />
            </div>
        </div>
    </form>
</body>
</html>
