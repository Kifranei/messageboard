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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:guestbookConnectionString %>" SelectCommand="SELECT * FROM [register]"
                    UpdateCommand="UPDATE [register] SET [username]=@username, [password]=@password, [sex]=@sex, [QQ]=@QQ, [information]=@information, [others]=@others WHERE [id]=@id"
                    DeleteCommand="DELETE FROM [register] WHERE [id]=@id">
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="sex" Type="String" />
                        <asp:Parameter Name="QQ" Type="String" />
                        <asp:Parameter Name="information" Type="String" />
                        <asp:Parameter Name="others" Type="String" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" HeaderText="编辑" />
                        <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
                        <asp:BoundField DataField="id" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                        <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex" />
                        <asp:BoundField DataField="QQ" HeaderText="QQ" SortExpression="QQ" />
                        <asp:BoundField DataField="information" HeaderText="签名" SortExpression="information" />
                        <asp:BoundField DataField="others" HeaderText="备注" SortExpression="others" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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
