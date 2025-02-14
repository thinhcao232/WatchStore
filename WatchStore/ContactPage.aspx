<%@ Page Title="" Language="C#" MasterPageFile="~/General.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="WatchStore.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
   .auto-style7 {
            width: 101%;
            height: 439px;
        }
   .auto-style4 {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            width: 85%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../styles/styleContactPage.css" rel="stylesheet" />
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.457200943685!2d106.6633743147497!3d10.777268192319074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ee98efcd519%3A0x2f758f8104b776ec!2sC%C3%B4ng%20ty%20TNHH%20-%20MONA%20MEDIA!5e0!3m2!1sen!2s!4v1594257085414!5m2!1sen!2s" style="border:0;" allowfullscreen="" loading="lazy" class="auto-style7"></iframe>
    </div>
    <div class="contact-info">
        <div>
            <h3 style="color: #FF0000">Địa chỉ:</h3>
            <p>218 LÊ DUẨN - ĐÀ NẴNG</p>
        </div>
        <div>
            <h3 style="color: #FF0000">Điện thoại:</h3>
            097.559.2299<br />
            093.756.2612</div>
        <div>
            <h3 style="color: #FF0000">Email:</h3>
            <p>shopwatch@gmail.com</p>
            <p>hotroshowatch@wt.vn</p>
        </div>
    </div>
    <div class="contact-form">
        <asp:TextBox ID="Name" runat="server" Placeholder="Họ và tên" Width="600px" Height="35px"></asp:TextBox>
        <asp:TextBox ID="Email" runat="server" Placeholder="Email" Width="600px" Height="35px"></asp:TextBox>
        <asp:TextBox ID="Phone" runat="server" Placeholder="Số điện thoại" Width="600px" Height="35px"></asp:TextBox>
        <asp:TextBox ID="Address" runat="server" Placeholder="Địa chỉ" Height="35px" Width="600px"></asp:TextBox>
        <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" Placeholder="Lời nhắn" Width="600px" Height="35px"></asp:TextBox>
        <br />
        <asp:Button ID="Submit" runat="server" Text="Gửi" Height="30px" Width="50px" />
    </div>
</asp:Content>
