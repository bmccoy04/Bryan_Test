using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bryan_Test.Controls;

namespace Bryan_Test
{
    public partial class TelerikModalTest : System.Web.UI.Page
    {
        public Controls.ModalUserControl ucModalUserControl { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

//            radAjaxManager.AjaxSettings.AddAjaxSetting(ucModalUserControl.btnCloseWindow, litWindowText);
//            radAjaxManager.AjaxSettings.AddAjaxSetting(ucModalUserControl.btnChangeLiteral, ucModalUserControl.txtTestBox);
//            radAjaxManager.AjaxSettings.AddAjaxSetting(ucModalUserControl.btnChangeLiteral, ucModalUserControl.litTesteral);
            ucModalUserControl = new ModalUserControl();
            ucModalUserControl.OnModalEventOccurs += new EventHandler(ucModalUserControl_OnModalEventOccurs);
            plcHolder.Controls.Add(ucModalUserControl);
        }

        protected void btnOpenRadWindow_Click(object sender, EventArgs e)
        {
            ucModalUserControl.TextBoxText = "Winner!";
            radAjaxManager.ResponseScripts.Add("ShowSuccess();");
        }

        void ucModalUserControl_OnModalEventOccurs(object sender, EventArgs e)
        {
            //Response.Redirect("TestInterface.aspx");
            litWindowText.Text = ucModalUserControl.TextBoxText;
        }

        protected void btnContentTemplate_OnClick(object sender, EventArgs e)
        {
           // litMyWindowLit.Text = "test";
        }

        protected void ddlMyList_SelectedIndexChanged(object sender, EventArgs e)
        {
            return;
        }
    }
}