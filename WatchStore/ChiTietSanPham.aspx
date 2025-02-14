<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="WatchStore.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 29px;
            width: 85px;
        }
        .auto-style5 {
            width: 34px;
        }
        .auto-style6 {
            margin-right: 0px;
        }
        .auto-style8 {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5" rowspan="8">
                        <asp:Image ID="lblHinh" runat="server" CssClass="auto-style6" Height="400px" ImageUrl='<%# "Image/watch/"+ Eval("Hinh") %>' Width="300px" />
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="lbName" runat="server" Text='<%# Eval("TenSP") %>' Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Giá: <asp:Label ID="lblDonGia" runat="server" Text='<%# Eval("DonGia") %>' Font-Bold="True"></asp:Label>
                        &nbsp;vnđ</td>
                </tr>
                <tr>
                    <td class="auto-style8">Chất liệu:
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("ChatLieu") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Kích thước:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("KichThuoc") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Độ dày:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("DoDay") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Khả năng chống nước:
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("ChongNuoc") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" Text="Thêm Vào Giỏ Hàng" Width="191px" OnClick="Button1_Click" CommandArgument='<%# Eval("MaSP") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
