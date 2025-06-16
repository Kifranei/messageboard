<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gbook.aspx.cs" Inherits="messageboard.admin.Gbook" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>留言管理</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:guestbookConnectionString %>" SelectCommand="SELECT * FROM [gbook]" UpdateCommand="UPDATE gbook SET repcontent=@repcontent, reptime=@reptime, admin=@admin WHERE id=@id"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                <Columns>
                    <asp:TemplateField HeaderText="回复">
                        <ItemTemplate>
                            <asp:TextBox ID="txtReply" runat="server" Text='<%# Bind("repcontent") %>' Width="120px" />
                            <asp:Button ID="btnReply" runat="server" Text="回复" CommandName="Reply" CommandArgument='<%# Eval("id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
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
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
