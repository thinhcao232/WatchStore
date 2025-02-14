using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WatchStore.Class;

namespace WatchStore
{
    public partial class Cart : System.Web.UI.Page
    {
        Xuly ckn = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string MaSP = Request.QueryString["MaSP"];
            string q = "select * from Product where MaSP='" + MaSP + "'";
            this.dlCart.DataSource = ckn.laydata(q);
            this.dlCart.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //List<Watch> list = (List<Watch>)Session["Cart"];
            //if (list != null)
            //{
            //    for (int i = 0; i < list.Count; i++)
            //    {
            //        TextBox tb = (TextBox)dlCart.Items[i].FindControl("txtSoLuong");
            //        list[i].SoLuong = int.Parse(tb.Text);
            //    }
            //}
            Response.Redirect(Request.RawUrl);
        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtHoTen.Text == "" || txtSDT.Text == "" || txtDiaChi.Text == "")
            {
                Response.Write("<script>alert('phải điền đầy đủ thông tin khách hàng');</script>");
                return;
            }
            
            Response.Redirect(Request.RawUrl);
        }
    }
}