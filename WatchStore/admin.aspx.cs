using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WatchStore.Class;

namespace WatchStore
{
    public partial class admin : System.Web.UI.Page
    {
        Xuly ckn = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q = "select * from TypeProduct";
            this.drMaSP.DataSource = ckn.laydata(q);
            this.drMaSP.DataTextField = "TenLoai";
            this.drMaSP.DataValueField = "MaLoai";
            this.drMaSP.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string masp = txtMaSP.Text;
            string tensp = txtTenSP.Text;
            string dongia = txtGia.Text;
            string mota = txtMoTa.Text;
            string chatlieu = txtChatLieu.Text;
            string kichthuoc = txtKichThuoc.Text;
            string doday = txtDoDay.Text;
            string chongnuoc = txtNuoc.Text;
            string nguoi = txtNguoi.Text;
            string maloai = drMaSP.SelectedValue;
            string taptin = fHinh.FileName;
            string soluong = txtSoLuong.Text;
            int kq = ckn.them("insert into Product values (N'" + masp + "', N'" + tensp + "', '" + dongia + "',N'" + mota + "', N'" + chatlieu + "' , '" + kichthuoc + "', '" + doday + "', N'" + chongnuoc + "', '" + taptin + "', '" + maloai + "', N'" + nguoi + "','" + soluong + "')");
            if (kq > 0)
            {
                //Response.Write("<script>alert('thêm thành công');</script>");
                Response.Redirect(Request.RawUrl);
            }
            else 
            {
                Response.Write("<script>alert('thêm không thành công');</script>");
                
            }
            //if (fHinh.FileName != "")
            //{
            //    string filePath = Server.MapPath("~/Image/watch/") + taptin;
            //    fHinh.SaveAs(filePath);
            //}
        }
    }
}