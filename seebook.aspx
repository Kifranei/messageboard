<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="seebook.aspx.cs" Inherits="messageboard.seebook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .seebook-header { margin: 20px auto 10px auto; width: 90%; max-width: 700px; text-align: left; font-size: 16px; }
        .seebook-header a { color: #4caf50; text-decoration: none; margin: 0 8px; }
        .seebook-header a:hover { text-decoration: underline; }
        .seebook-pager { margin: 20px auto; width: 90%; max-width: 700px; text-align: center; }
        .seebook-pager .aspNet-LinkButton { margin: 0 6px; padding: 4px 14px; border-radius: 4px; border: none; background: #4caf50; color: #fff; font-size: 15px; cursor: pointer; display: inline-block; }
        .seebook-pager .aspNet-LinkButton:disabled { background: #ccc; color: #fff; cursor: not-allowed; }
        .seebook-pager .page-info { margin: 0 10px; color: #888; }
        .g_table { width: 90%; max-width: 700px; margin: 20px auto; border-collapse: separate; border-radius: 8px; background: #f9f9f9; box-shadow: 0 2px 8px #eee; }
        .g_title { font-weight: bold; color: #333; margin-bottom: 6px; }
        .g_content { font-size: 16px; color: #222; margin-bottom: 6px; }
        .g_reply { font-size: 13px; color: #e53935; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="seebook-header">
        <asp:Label ID="Label1" runat="server" />
        <span style="float:right;">
            <asp:Label ID="Label2" runat="server" />
            <asp:Label ID="Label5" runat="server" />
        </span>
    </div>
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="g_table">
                <tr>
                    <td>
                        <div class="g_title">
                            你于<asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' /> 进行留言:&nbsp;
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="g_content">
                            <asp:Label ID="contentLabel" runat="server" Text='<%# Eval("contents") %>' />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="g_reply">
                            <asp:Label ID="repcontentLabel" runat="server" style="font-size: xx-small; color: #FF0000" Text='<%# Eval("repcontent") %>' />
                        </div>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="seebook-pager">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="aspNet-LinkButton">第一页</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="aspNet-LinkButton">上一页</asp:LinkButton>
        <span class="page-info">第<asp:Label ID="Label3" runat="server" />页 / 共<asp:Label ID="Label4" runat="server" />页</span>
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CssClass="aspNet-LinkButton">下一页</asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" CssClass="aspNet-LinkButton">最后一页</asp:LinkButton>
    </div>
</asp:Content>
