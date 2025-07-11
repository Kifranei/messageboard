<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gbook.aspx.cs" Inherits="messageboard.Gbook" %>
<%@ Register src="Control/GbookList.ascx" tagname="GbookList" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
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
        @media (max-width: 700px) {
            .gbook-box {
                width: 100% !important;
                padding: 10px !important;
                margin: 10px 0 !important;
                box-sizing: border-box;
            }
            .gbook-row {
                flex-direction: column;
                align-items: stretch;
            }
            .gbook-label {
                width: 100%;
                margin-top: 0;
                margin-bottom: 5px;
            }
        }
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
        <div class="gbook-row">
            <span class="gbook-label">分组：</span>
            <span class="gbook-value">
                <asp:DropDownList ID="DropDownListClass" runat="server" DataSourceID="SqlDataSourceClass" DataTextField="classname" DataValueField="id"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceClass" runat="server" ConnectionString="<%$ ConnectionStrings:guestbookConnectionString %>" SelectCommand="SELECT id, classname FROM gbook_class"></asp:SqlDataSource>
            </span>
        </div>
        <div class="gbook-btns">
            <asp:Button ID="Button1" runat="server" Text="留言" CssClass="aspNet-Button" OnClick="Button1_Click1" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="PagerPlaceHolder">
</asp:Content>

