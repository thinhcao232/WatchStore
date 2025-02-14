<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WatchStore.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 282px;
        }
        .auto-style5 {
            width: 282px;
            height: 35px;
        }
        .auto-style6 {
            height: 35px;
        }
        .auto-style7 {
            width: 135px;
        }
        .auto-style8 {
            width: 135px;
            height: 35px;
        }
        .auto-style9 {
            width: 403px;
        }
        .auto-style10 {
            width: 403px;
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>TRANG QUẢN LÝ SẢN PHẨM</h1>
    <hr />
         <table style="width: 100%;">
             <tr>
                 <td class="auto-style7">Mã SP:</td>
                 <td class="auto-style9">
                     <asp:TextBox ID="txtMaSP" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style4">Độ Chống Nước:</td>
                 <td>
                     <asp:TextBox ID="txtNuoc" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">Tên SP:</td>
                 <td class="auto-style9">
                     <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style4">Hình ảnh:</td>
                 <td>
                     <asp:FileUpload ID="fHinh" runat="server" />
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">Đơn giá:</td>
                 <td class="auto-style9">
                     <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style4">Loại SP:</td>
                 <td>
                     <asp:DropDownList ID="drMaSP" runat="server">
                     </asp:DropDownList>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">Chất Liệu:</td>
                 <td class="auto-style9">
                     <asp:TextBox ID="txtChatLieu" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style4">Đối Tượng:</td>
                 <td>
                     <asp:TextBox ID="txtNguoi" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">Kích Thước:</td>
                 <td class="auto-style9">
                     <asp:TextBox ID="txtKichThuoc" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style4">Mô Tả:</td>
                 <td>
                     <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style8">Độ Dày:</td>
                 <td class="auto-style10">
                     <asp:TextBox ID="txtDoDay" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style5">Số Lượng</td>
                 <td class="auto-style6">
                     <asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">&nbsp;</td>
                 <td class="auto-style9">
                     &nbsp;</td>
                 <td class="auto-style4">
                     <asp:Button ID="Button1" runat="server" Text="Thêm Sản Phẩm" OnClick="Button1_Click" BackColor="#66FF33" />
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
         <hr />
    <hr />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
                <asp:BoundField DataField="Hinh" HeaderText="Hinh" SortExpression="Hinh" />
                <asp:BoundField DataField="MaLoai" HeaderText="MaLoai" SortExpression="MaLoai" />
                <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                <asp:BoundField DataField="Nguoi" HeaderText="Nguoi" SortExpression="Nguoi" />
                <asp:BoundField DataField="ChatLieu" HeaderText="ChatLieu" SortExpression="ChatLieu" />
                <asp:BoundField DataField="KichThuoc" HeaderText="KichThuoc" SortExpression="KichThuoc" />
                <asp:BoundField DataField="DoDay" HeaderText="DoDay" SortExpression="DoDay" />
                <asp:BoundField DataField="ChongNuoc" HeaderText="ChongNuoc" SortExpression="ChongNuoc" />
                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [Product] ([MaSP], [TenSP], [DonGia], [Hinh], [MaLoai], [SoLuong], [Nguoi], [ChatLieu], [KichThuoc], [DoDay], [ChongNuoc], [MoTa]) VALUES (@MaSP, @TenSP, @DonGia, @Hinh, @MaLoai, @SoLuong, @Nguoi, @ChatLieu, @KichThuoc, @DoDay, @ChongNuoc, @MoTa)" SelectCommand="SELECT [MaSP], [TenSP], [DonGia], [Hinh], [MaLoai], [SoLuong], [Nguoi], [ChatLieu], [KichThuoc], [DoDay], [ChongNuoc], [MoTa] FROM [Product]" UpdateCommand="UPDATE [Product] SET [TenSP] = @TenSP, [DonGia] = @DonGia, [Hinh] = @Hinh, [MaLoai] = @MaLoai, [SoLuong] = @SoLuong, [Nguoi] = @Nguoi, [ChatLieu] = @ChatLieu, [KichThuoc] = @KichThuoc, [DoDay] = @DoDay, [ChongNuoc] = @ChongNuoc, [MoTa] = @MoTa WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="DonGia" Type="Int32" />
                <asp:Parameter Name="Hinh" Type="String" />
                <asp:Parameter Name="MaLoai" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Nguoi" Type="String" />
                <asp:Parameter Name="ChatLieu" Type="String" />
                <asp:Parameter Name="KichThuoc" Type="String" />
                <asp:Parameter Name="DoDay" Type="String" />
                <asp:Parameter Name="ChongNuoc" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="DonGia" Type="Int32" />
                <asp:Parameter Name="Hinh" Type="String" />
                <asp:Parameter Name="MaLoai" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Nguoi" Type="String" />
                <asp:Parameter Name="ChatLieu" Type="String" />
                <asp:Parameter Name="KichThuoc" Type="String" />
                <asp:Parameter Name="DoDay" Type="String" />
                <asp:Parameter Name="ChongNuoc" Type="String" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="MaSP" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
