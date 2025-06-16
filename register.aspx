<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="messageboard.register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>注册</title>
<style type="text/css">
    .userinfo-box {
        width: 420px;
        margin: 40px auto;
        background: #f9f9f9;
        border-radius: 10px;
        box-shadow: 0 2px 12px #eee;
        padding: 32px 38px 24px 38px;
    }
    .userinfo-title {
        font-size: 24px;
        font-weight: bold;
        text-align: center;
        margin-bottom: 28px;
        color: #333;
    }
    .userinfo-row {
        margin: 18px 0 0 0;
        font-size: 16px;
        display: flex;
        align-items: center;
    }
    .userinfo-label {
        color: #888;
        width: 90px;
        flex-shrink: 0;
    }
    .userinfo-value {
        flex: 1;
    }
    .userinfo-value input, .userinfo-value textarea, .userinfo-value select {
        width: 100%;
        padding: 7px 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 15px;
        background: #fff;
        box-sizing: border-box;
    }
    .userinfo-btns {
        text-align: center;
        margin-top: 30px;
    }
    .userinfo-btns input[type=submit], .userinfo-btns input[type=button], .userinfo-btns button, .userinfo-btns .aspNet-Button {
        margin: 0 10px;
        padding: 8px 28px;
        border-radius: 4px;
        border: none;
        background: #4caf50;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.2s;
    }
    .userinfo-btns input[type=submit]:hover, .userinfo-btns input[type=button]:hover, .userinfo-btns button:hover, .userinfo-btns .aspNet-Button:hover {
        background: #388e3c;
    }
    .aspNet-Validator {
        color: #e53935;
        margin-left: 8px;
        font-size: 13px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="userinfo-box">
            <div class="userinfo-title">欢迎注册留言板！</div>
            <div style="text-align:center;margin-bottom:20px;">
                <asp:Label ID="Label1" runat="server" />
                <asp:Label ID="Label2" runat="server" style="margin-left:20px;" />
                <asp:Label ID="Label3" runat="server" style="margin-left:20px;" />
            </div>
            <div class="userinfo-row">
                <span class="userinfo-label">用户名：</span>
                <span class="userinfo-value">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="用户名不能为空" CssClass="aspNet-Validator"></asp:RequiredFieldValidator>
            </div>
            <div class="userinfo-row">
                <span class="userinfo-label">密码：</span>
                <span class="userinfo-value">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空" CssClass="aspNet-Validator"></asp:RequiredFieldValidator>
            </div>
            <div class="userinfo-row">
                <span class="userinfo-label">性别：</span>
                <span class="userinfo-value">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </span>
            </div>
            <div class="userinfo-row">
                <span class="userinfo-label">QQ：</span>
                <span class="userinfo-value">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </span>
            </div>
            <div class="userinfo-row">
                <span class="userinfo-label">个性签名：</span>
                <span class="userinfo-value">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                </span>
            </div>
            <div class="userinfo-row">
                <span class="userinfo-label">备注：</span>
                <span class="userinfo-value">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                </span>
            </div>
            <div class="userinfo-btns">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="立即注册" CssClass="aspNet-Button" />
            </div>
        </div>
    </form>
</body>
</html>
