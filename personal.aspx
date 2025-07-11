<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="personal.aspx.cs" Inherits="messageboard.personal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
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
            color: #222;
            font-weight: 500;
        }
        .userinfo-btns {
            text-align: center;
            margin-top: 30px;
        }
        .userinfo-btns a, .userinfo-btns .aspNet-LinkButton {
            margin: 0 10px;
            padding: 8px 28px;
            border-radius: 4px;
            border: none;
            background: #4caf50;
            color: #fff;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.2s;
            display: inline-block;
        }
        .userinfo-btns a:hover, .userinfo-btns .aspNet-LinkButton:hover {
            background: #388e3c;
        }
        @media (max-width: 600px) {
            .userinfo-box {
                width: 100% !important;
                padding: 10px !important;
                margin: 10px 0 !important;
                box-sizing: border-box;
            }
            .userinfo-row {
                flex-direction: column;
                align-items: stretch;
            }
            .userinfo-label {
                width: 100%;
                margin-bottom: 5px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;margin-bottom:20px;">
        <asp:Label ID="Label1" runat="server" />
        <asp:Label ID="Label2" runat="server" style="margin-left:20px;" />
        <asp:Label ID="Label3" runat="server" style="margin-left:20px;" />
    </div>
    <div class="userinfo-box">
        <div class="userinfo-title">
            <asp:Label ID="Label4" runat="server" Text="用户名"></asp:Label>
        </div>
        <div class="userinfo-row">
            <span class="userinfo-label">性别：</span><span class="userinfo-value"><asp:Label ID="Label5" runat="server" /></span>
        </div>
        <div class="userinfo-row">
            <span class="userinfo-label">QQ：</span><span class="userinfo-value"><asp:Label ID="Label6" runat="server" /></span>
        </div>
        <div class="userinfo-row">
            <span class="userinfo-label">个性签名：</span><span class="userinfo-value"><asp:Label ID="Label7" runat="server" /></span>
        </div>
        <div class="userinfo-row">
            <span class="userinfo-label">用户备注：</span><span class="userinfo-value"><asp:Label ID="Label8" runat="server" /></span>
        </div>
        <div class="userinfo-row">
            <span class="userinfo-label">留言数：</span><span class="userinfo-value"><asp:Label ID="Label9" runat="server" /></span>
        </div>
        <div class="userinfo-btns">
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="aspNet-LinkButton" OnClick="LinkButton1_Click">修改资料</asp:LinkButton>
            <a href="default.aspx">返回首页</a>
        </div>
    </div>
</asp:Content>
