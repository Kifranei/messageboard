<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="main_gbook.ascx.cs" Inherits="messageboard.admin.main_gbook" %>
<asp:GridView ID="GridViewGbook" runat="server" AutoGenerateColumns="False" DataKeyNames="id" Width="100%" OnRowCommand="GridViewGbook_RowCommand">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
        <asp:BoundField DataField="username" HeaderText="用户名" />
        <asp:BoundField DataField="title" HeaderText="主题" />
        <asp:BoundField DataField="contents" HeaderText="内容" />
        <asp:BoundField DataField="time" HeaderText="时间" />
        <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
                <asp:Button ID="btnReply" runat="server" Text="回复" CommandName="Reply" CommandArgument='<%# Eval("id") %>' />
                <asp:Button ID="btnDelete" runat="server" Text="删除" CommandName="Delete" CommandArgument='<%# Eval("id") %>' OnClientClick="return confirm('确定要删除吗？');" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
