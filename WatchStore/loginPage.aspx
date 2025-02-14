<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="WatchStore.loginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="styles/styleLoginPage.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
        <div class="login-panel">
            <h2>Đăng Nhập</h2>
            <asp:Panel ID="Panel1" runat="server" Height="100%" HorizontalAlign="Left">
                <label for="txt_username">Email :</label>
                <asp:TextBox ID="txt_username" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
                <label for="txt_password">Mật Khẩu :</label>
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" CssClass="form-control" Width="100%"></asp:TextBox>
                <div class="radio-container">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Nhớ mật khẩu" />
                </div>
                <div class="button-container">
                    <asp:Button ID="btn_dangnhap" runat="server" Text="Đăng Nhập" CssClass="btn btn-primary" />
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
