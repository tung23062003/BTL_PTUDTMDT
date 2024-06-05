using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_PTUDTMDT
{
    public partial class product_detail : System.Web.UI.Page
    {
        public string MyMessage = "Hello, world!";
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["Message"] = "Hello from ViewState!";
        }
    }
}