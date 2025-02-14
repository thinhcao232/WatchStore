<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="womanWatchPage.aspx.cs" Inherits="WatchStore.womanWatchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../styles/styleWomanWatchPage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:DataList ID="DataList2" runat="server" CellSpacing="20" GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Image ID="Image6" runat="server" ImageUrl='<%# "Image/watch/"+ Eval("Hinh") %>' Width="300px" />
            <hr />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>' Font-Bold="True"></asp:Label>
            <br />
            Giá:
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") %>' Font-Bold="True" Font-Italic="True"></asp:Label>
            &nbsp;vnđ<br />
            <asp:Button ID="Button1" runat="server" Text="Xem Chi Tiết" CommandArgument='<%# Eval("MaSP") %>' OnClick="Button1_Click"  />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
