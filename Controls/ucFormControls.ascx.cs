using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bryan_Test.Controls
{
    public partial class ucFormControls : System.Web.UI.UserControl
    {
        public string Memo
        {
            set { txtMemo.Text = value.ToString(); }
        }

        public string MoneyIn
        {
            set { txtMoneyIn.Text = value.ToString(); }
        }

        public string MoneyOut
        {
            set { txtMoneyOut.Text = value.ToString(); }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}