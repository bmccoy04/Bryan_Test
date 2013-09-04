using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2010Fun.CMS_Yeah
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rrr = CMS_Util.GetText("Home.aspx", "Preface");
            litPreface.Text = rrr;
        }
    }
}