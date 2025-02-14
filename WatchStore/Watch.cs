using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WatchStore
{
    public class Watch
    {
        public string MaSP;
        public string TenSP;
        public int DonGia;
        public string MoTa;
        public string ChatLieu;
        public string KichThuoc;
        public string DoDay;
        public string ChongNuoc;
        public string Hinh;
        public string MaLoai;
        public string Nguoi;
        public int SoLuong;

        public Watch() { }

        public Watch(string MaSP, string TenSP, int DonGia, string MoTa, string ChatLieu, string KichThuoc, string DoDay, string ChongNuoc, string Hinh, string MaLoai, string Nguoi, int SoLuong)
        {
            this.MaSP = MaSP;
            this.TenSP = TenSP;
            this.DonGia = DonGia;
            this.MoTa = MoTa;
            this.ChatLieu = ChatLieu;
            this.KichThuoc = KichThuoc;
            this.DoDay = DoDay;
            this.ChongNuoc = ChongNuoc;
            this.Hinh = Hinh;
            this.MaLoai = MaLoai;
            this.Nguoi = Nguoi;
            this.SoLuong = SoLuong;
        }
    }
}