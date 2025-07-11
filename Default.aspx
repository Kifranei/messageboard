<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="messageboard.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>选择留言板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style>
        @media (max-width: 600px) {
            .gbook_main {
                width: 100% !important;
                padding: 10px !important;
                box-sizing: border-box;
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
    <div class="gbook_main">   
        选择留言板:<br />
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="classname" DataValueField="id">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查看留言" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:guestbookConnectionString %>" 
            SelectCommand="SELECT * FROM [gbook_class]"></asp:SqlDataSource>
    </div>
</asp:Content>
