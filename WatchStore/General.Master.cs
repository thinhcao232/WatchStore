using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WatchStore.Class;

namespace WatchStore
{
    public partial class General : System.Web.UI.MasterPage
    {
        Xuly ckn = new Xuly();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q = "select * from TypeProduct";
            this.DataList1.DataSource = ckn.laydata(q);
            this.DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string ml = ((LinkButton)sender).CommandArgument;
            Response.Redirect("ProductPage.aspx?ml=" + ml);
        }
    }
}