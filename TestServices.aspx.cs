using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bryan_Test
{
    public partial class TestServices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bryan_Test_Services.Test_Service myService = new Bryan_Test_Services.Test_Service();
            litText.Text = myService.get_TestSTring();
            litText.Text = litText.Text + " " + myService.get_TestInt();
        }
    }
}