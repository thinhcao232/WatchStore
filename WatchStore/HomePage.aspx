﻿<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WatchStore.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
  
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" GridLines="Both" CssClass="auto-style3" CellPadding="0" CellSpacing="20" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Image ID="Image6" runat="server" ImageUrl='<%# "Image/watch/"+ Eval("Hinh") %>' Width="300px" />
            <hr />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>' Font-Bold="True"></asp:Label>
            <br />
            Giá:
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") %>' Font-Bold="True" Font-Italic="True"></asp:Label>
            &nbsp;vnđ<br />
            <asp:Button ID="Button1" runat="server" Text="Xem Chi Tiết" CommandArgument='<%# Eval("MaSP") %>' OnClick="Button1_Click" />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
