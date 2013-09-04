using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bryan_Test.Controls
{
    public partial class ModalUserControl : System.Web.UI.UserControl
    {
        public event EventHandler OnModalEventOccurs;

        public String TextBoxText
        {
            get { return txtTest.Text; }
            set { txtTest.Text = value; }
        }

        public TextBox txtTestBox
        {
            get { return txtTest; }
        }

        public Literal litTesteral
        {
            get { return litTest; }
        }

        public Button btnCloseWindow
        {
            get { return btnClose; }
        }

        public Button btnChangeLiteral
        {
            get { return btnChangeLit; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangeLit_Click(object sender, EventArgs e)
        {
            litTest.Text = txtTest.Text;
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            OnModalEventOccurs(null, null);
        }
    }
}