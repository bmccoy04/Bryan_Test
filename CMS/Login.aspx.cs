using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace _2010Fun.CMS_Yeah
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divLogin.Visible = true;
                divContentGrid.Visible = false;
                divEditContent.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //string username = ConfigurationManager.AppSettings["CMS_Username"].ToString();
            //string password = ConfigurationManager.AppSettings["CMS_Password"].ToString();

            //if (txtUsername.Text.Trim() == username && txtPassword.Text.Trim() == password)
            //{
                divLogin.Visible = false;
                divContentGrid.Visible = true;
                divEditContent.Visible = false;

                LoadGrid();
            //}
        }

        private void LoadGrid()
        {
            CMS_Util iClass1 = new CMS_Util();
            grdContent.DataSource = (from a in iClass1.GetAll() orderby a.Key select a).ToList();
            grdContent.DataBind();
        }

        protected void grdContent_ItemCommand(object source, Telerik.Web.UI.GridCommandEventArgs e)
        {
            if (e.CommandName == "EditContent")
            {

                CMS_Util iClass1 = new CMS_Util();

                divLogin.Visible = false;
                divContentGrid.Visible = false;
                divEditContent.Visible = true;

                CMS_Util found = iClass1.GetByKey(e.CommandArgument.ToString());

                litKey.Text = found.Key;
                litDescription.Text = found.Description;
                txtText.Text = found.Text;
            }
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            CMS_Util iClass1 = new CMS_Util();

            CMS_Util ToUpdate = new CMS_Util();
            ToUpdate.Key = litKey.Text;
            ToUpdate.Description = litDescription.Text;
            ToUpdate.Text = Server.HtmlEncode(txtText.Text.Trim());

            iClass1.UpdateText(ToUpdate);

            divLogin.Visible = false;
            divContentGrid.Visible = true;
            divEditContent.Visible = false;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            divLogin.Visible = false;
            divContentGrid.Visible = true;
            divEditContent.Visible = false;

            LoadGrid();
        }

    }
}