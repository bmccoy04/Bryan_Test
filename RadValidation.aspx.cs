using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bryan_Test
{
    public partial class RadValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvTest_Validation(object source, ServerValidateEventArgs args)
        {
            GetValue(args);
        }

        private void GetValue(ServerValidateEventArgs args)
        {
            if (txtTest.Text == "pass")
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
                radAjaxManager.ResponseScripts.Remove("showNotification();");
                radAjaxManager.ResponseScripts.Add("showNotification();");
            }
        }

        protected void btnSubmit_Validate(object sender, EventArgs e)
        {
            Page.Validate();

            if(!Page.IsValid)
                return;
            
            Response.Redirect("Default.aspx");
        }
    }
}