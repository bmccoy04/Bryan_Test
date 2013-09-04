using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bryan_Test
{
    public partial class FlexPaperDemo : System.Web.UI.Page
    {
        public String Licensekey
        {
            get { return "$659bda0e09811de23c6"; }
        }

        public String RenderPrimary
        {
            get { return "html5"; }
        }

        public String RenderSecondary
        {
            get { return "flash"; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}