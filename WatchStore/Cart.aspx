<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WatchStore.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
    <table cellpadding="0" cellspacing="0">
        <tr>
            <td style="width:400px;">SẢN PHẨM</td>
            <td style="width:180px;">GIÁ</td>
            <td style="width:100px;">SỐ LƯỢNG</td>
            <td style="width:400px;text-align:right;">TỔNG</td>
        </tr>
    </table>
    <hr />
    <asp:DataList ID="dlCart" RepeatColumns="1" runat="server">
        <ItemTemplate>
            <table cellpadding="0" cellspacing="0" class="tb">
                <tr>
                    
                    <td>
                        &nbsp;</td>
                    <td style="width:300px;">
                        <asp:HyperLink ID="HyperLink2" Text='<%# Eval("TenSP") %>' ForeColor="Red" Font-Underline="False" runat="server"></asp:HyperLink>
                    </td>
                    <td style="width:200px;">&nbsp
                        <span style="font-weight:bold;"><asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia","{0:0,0}") %>'></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
                    </td>
                    <td style="width:100px;">
                        <asp:TextBox ID="txtSoLuong" Text='1' runat="server" style="width:40px;height:30px;"></asp:TextBox>
                    </td>
                    <td style="width:400px;text-align:right;">
                        <span style="font-weight:bold;"><asp:Label ID="lbTong" Text='<%# (1*Convert.ToInt32(Eval("DonGia"))).ToString("N0") %>' runat="server"></asp:Label>&nbsp;<span style="text-decoration:underline;">đ</span></span>
                    </td>
                </tr>
            </table>
            <hr />
        </ItemTemplate>
    </asp:DataList>
    
    <br /><hr />
    <br /><asp:Button ID="Button1" runat="server" Text="CẬP NHẬT GIỎ HÀNG" style="height:40px;background-color:red;color:white;" OnClick="Button1_Click"/>
    <br /><hr />
    <br />
    <table>
        <tr>
            <td colspan="2">THÔNG TIN KHÁCH HÀNG</td>
        </tr>
        <tr>
            <td style="width:100px">Họ và tên</td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server" style="width:300px;height:30px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Điện thoại *</td>
            <td>
                <asp:TextBox ID="txtSDT" runat="server" style="width:300px;height:30px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Địa chỉ</td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" style="width:300px;height:30px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="GỬI ĐƠN HÀNG" style="height:40px;background-color:red;color:white;" OnClick="Button2_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
