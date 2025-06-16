<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="messageboard.admin.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .admin-login-box {
        width: 400px;
        margin: 60px auto;
        background: #f4f8fb;
        border-radius: 10px;
        box-shadow: 0 2px 12px #b3c6e0;
        padding: 36px 38px 28px 38px;
    }
    .admin-login-title {
        font-size: 24px;
        font-weight: bold;
        text-align: center;
        margin-bottom: 30px;
        color: #1565c0;
        letter-spacing: 2px;
    }
    .admin-login-row {
        margin: 18px 0 0 0;
        font-size: 16px;
        display: flex;
        align-items: center;
    }
    .admin-login-label {
        color: #888;
        width: 90px;
        flex-shrink: 0;
    }
    .admin-login-value {
        flex: 1;
    }
    .admin-login-value input {
        width: 100%;
        padding: 7px 10px;
        border: 1px solid #90caf9;
        border-radius: 4px;
        font-size: 15px;
        background: #fff;
        box-sizing: border-box;
    }
    .admin-login-btns {
        text-align: center;
        margin-top: 30px;
    }
    .admin-login-btns input[type=submit], .admin-login-btns input[type=button], .admin-login-btns button, .admin-login-btns .aspNet-Button {
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
    .admin-login-btns input[type=submit]:hover, .admin-login-btns input[type=button]:hover, .admin-login-btns button:hover, .admin-login-btns .aspNet-Button:hover {
        background: #0d47a1;
    }
    .aspNet-Validator {
        color: #e53935;
        margin-left: 8px;
        font-size: 13px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="admin-login-box">
        <div class="admin-login-title">管理员登录</div>
        <div class="admin-login-row">
            <span class="admin-login-label">用户名：</span>
            <span class="admin-login-value">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </span>
        </div>
        <div class="admin-login-row">
            <span class="admin-login-label">密码：</span>
            <span class="admin-login-value">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </span>
        </div>
        <div class="admin-login-btns">
            <asp:Button ID="Button1" runat="server" Text="登录" CssClass="aspNet-Button" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
