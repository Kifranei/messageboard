<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gbook.aspx.cs" Inherits="messageboard.Gbook" %>
<%@ Register src="Control/GbookList.ascx" tagname="GbookList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .gbook-box {
            width: 600px;
            margin: 40px auto;
            background: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 2px 12px #eee;
            padding: 32px 38px 24px 38px;
        }
        .gbook-title {
            font-size: 22px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 28px;
            color: #333;
        }
        .gbook-row {
            margin: 18px 0 0 0;
            font-size: 16px;
            display: flex;
            align-items: flex-start;
        }
        .gbook-label {
            color: #888;
            width: 70px;
            flex-shrink: 0;
            margin-top: 7px;
        }
        .gbook-value {
            flex: 1;
        }
        .gbook-value input, .gbook-value textarea {
            width: 100%;
            padding: 7px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 15px;
            background: #fff;
            box-sizing: border-box;
        }
        .gbook-btns {
            text-align: center;
            margin-top: 30px;
        }
        .gbook-btns input[type=submit], .gbook-btns input[type=button], .gbook-btns button, .gbook-btns .aspNet-Button {
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
        .gbook-btns input[type=submit]:hover, .gbook-btns input[type=button]:hover, .gbook-btns button:hover, .gbook-btns .aspNet-Button:hover {
            background: #388e3c;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gbook-box">
        <div class="gbook-title">留言</div>
        <div class="gbook-row">
            <span class="gbook-label">主题：</span>
            <span class="gbook-value">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </span>
        </div>
        <div class="gbook-row">
            <span class="gbook-label">内容：</span>
            <span class="gbook-value">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="120px"></asp:TextBox>
            </span>
        </div>
        <div class="gbook-btns">
            <asp:Button ID="Button1" runat="server" Text="留言" CssClass="aspNet-Button" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="PagerPlaceHolder">
</asp:Content>

