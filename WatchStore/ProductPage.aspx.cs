using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WatchStore.Class;

namespace WatchStore
{
    public partial class ProductPage : System.Web.UI.Page
    {
        Xuly ckn = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;

            string q;
            string ml = Request.QueryString["ml"];
            if (string.IsNullOrEmpty(ml))
                q = "select * from Product";
            else
            {
                q = "select * from Product where MaLoai='" + ml + "'";
            }
            this.DataList2.DataSource = ckn.laydata(q);
            this.DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string MaSP = ((Button)sender).CommandArgument;
            Response.Redirect("ChiTietSanPham.aspx?MaSP=" + MaSP);
        }
    }
}