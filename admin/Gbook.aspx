<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gbook.aspx.cs" Inherits="messageboard.admin.Gbook" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>留言管理</title>
    <style type="text/css">
        .admin-box {
            width: 900px;
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
            <div class="admin-title">留言管理</div>
            <div class="admin-table">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:guestbookConnectionString %>" SelectCommand="SELECT * FROM [gbook]" UpdateCommand="UPDATE gbook SET repcontent=@repcontent, reptime=@reptime, admin=@admin WHERE id=@id"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="None" ForeColor="#333333">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:HyperLinkField HeaderText="回复" Text="回复" DataNavigateUrlFields="id" DataNavigateUrlFormatString="reply.aspx?id={0}" />
                        <asp:HyperLinkField HeaderText="删除" Text="删除" DataNavigateUrlFields="id" DataNavigateUrlFormatString="delete.aspx?id={0}" />
                        <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="title" HeaderText="主题" SortExpression="title" />
                        <asp:BoundField DataField="name" HeaderText="用户名" SortExpression="name" />
                        <asp:BoundField DataField="time" HeaderText="时间" SortExpression="time" />
                        <asp:BoundField DataField="contents" HeaderText="内容" SortExpression="contents" />
                        <asp:BoundField DataField="admin" HeaderText="回复的管理员" SortExpression="admin" />
                        <asp:BoundField DataField="reptime" HeaderText="回复时间" SortExpression="reptime" />
                        <asp:BoundField DataField="repcontent" HeaderText="回复的内容" SortExpression="repcontent" />
                        <asp:BoundField DataField="classid" HeaderText="组编号" SortExpression="classid" />
                        <asp:BoundField DataField="userid" HeaderText="用户编号" SortExpression="userid" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
