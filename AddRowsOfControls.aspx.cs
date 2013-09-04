using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Bryan_Test
{
    public partial class AddRowsOfControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetInitialRow();
                SetInitialUCRow();
            }
        }

        private void SetInitialUCRow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;

            dt.Columns.Add(new DataColumn("Memo", typeof(string)));
            dt.Columns.Add(new DataColumn("MoneyIn", typeof(string)));
            dt.Columns.Add(new DataColumn("MoneyOut", typeof(string)));

            dr = dt.NewRow();

            dr["Memo"] = "testMemo";
            dr["MoneyIn"] = "testMoneyIn";
            dr["MoneyOut"] = "testMoneyOut";
            dt.Rows.Add(dr);

            ViewState["MyCurrentTable"] = dt;
            rptUCRepeater.DataSource = dt;
            rptUCRepeater.DataBind();
            

            
        }

        protected void btnAgain_Click(object sender, EventArgs e)
        {
            AddAnoutherRow();
        }

        protected void BTNPost_Click(object sender, EventArgs e)
        {
            AddNewRow();
        }

        private void SetInitialRow()
        {

            DataTable dt = new DataTable();
            DataRow dr = null;

            //Create DataTable columns
            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));
            dt.Columns.Add(new DataColumn("Name", typeof(string)));
            dt.Columns.Add(new DataColumn("Comments", typeof(string)));

            //Create Row for each columns
            dr = dt.NewRow();

            dr["RowNumber"] = 1;
            dr["Name"] = string.Empty;
            dr["Comments"] = string.Empty;
            dt.Rows.Add(dr);

            //Store the DataTable in ViewState for future reference
            ViewState["CurrentTable"] = dt;

            //Bind the Repeater with the DataTable
            Repeater1.DataSource = dt;
            Repeater1.DataBind();

        }

        private void AddAnoutherRow()
        {
            if (ViewState["MyCurrentTable"] != null)
            {
                DataTable dtCurrentTable = (DataTable)ViewState["MyCurrentTable"];
                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)
                {
                    int count = 0;
                    foreach (RepeaterItem r in rptUCRepeater.Items)
                    {
                        Bryan_Test.Controls.ucFormControls myControl = (Bryan_Test.Controls.ucFormControls)r.Controls[1];
                        TextBox tbMemo = (TextBox)myControl.FindControl("txtMemo");
                        TextBox tbMoneyIn = (TextBox)myControl.FindControl("txtMoneyIn");
                        TextBox tbMoneyOut = (TextBox)myControl.FindControl("txtMoneyOut");

                        drCurrentRow = dtCurrentTable.NewRow();

                        dtCurrentTable.Rows[count]["Memo"] = tbMemo.Text;
                        dtCurrentTable.Rows[count]["MoneyIn"] = tbMoneyIn.Text;
                        dtCurrentTable.Rows[count]["MoneyOut"] = tbMoneyOut.Text;

                        count++;
                    }

                    drCurrentRow = dtCurrentTable.NewRow();
                    drCurrentRow["Memo"] = "New Row";
                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["MyCurrentTable"] = dtCurrentTable;
                    rptUCRepeater.DataSource = dtCurrentTable;
                    rptUCRepeater.DataBind();
                }
            }
        }

        private void AddNewRow()
        {

            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {

                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];
                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)
                {
                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)
                    {
                        //extract the TextBox values
                        TextBox tbName = (TextBox)Repeater1.Items[rowIndex].FindControl("TXTName");
                        TextBox tbComments = (TextBox)Repeater1.Items[rowIndex].FindControl("TXTComments");

                        //Create new row in DataTable and set its values
                        drCurrentRow = dtCurrentTable.NewRow();

                        drCurrentRow["RowNumber"] = i + 1;
                        dtCurrentTable.Rows[i - 1]["Name"] = tbName.Text;
                        dtCurrentTable.Rows[i - 1]["Comments"] = tbComments.Text;
                        rowIndex++;

                    }

                    //add the new row to the current DataTable
                    dtCurrentTable.Rows.Add(drCurrentRow);
                    //store the current DataTable in ViewState
                    ViewState["CurrentTable"] = dtCurrentTable;
                    //rebind the Repeater with the updated DataTable
                    Repeater1.DataSource = dtCurrentTable;
                    Repeater1.DataBind();
                }
            }
            else
            {
                Response.Write("ViewState is null");

            }
            //Set Previous Data on Postbacks
            SetPreviousData();
        }

        private void SetPreviousData()
        {
            int rowIndex = 0;
            if (ViewState["CurrentTable"] != null)
            {
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {

                        TextBox tbName = (TextBox)Repeater1.Items[rowIndex].FindControl("TXTName");
                        TextBox tbComments = (TextBox)Repeater1.Items[rowIndex].FindControl("TXTComments");

                        //Disable previous rows
                        //if (i < dt.Rows.Count - 1)
                        //{
                        //    tbName.Enabled = false;
                        //    tbComments.Enabled = false;
                        //}
                        //else
                        //{
                        //    tbName.Enabled = true;
                        //    tbComments.Enabled = true;
                        //}

                        tbName.Text = dt.Rows[i]["Name"].ToString();
                        tbComments.Text = dt.Rows[i]["Comments"].ToString();
                        rowIndex++;
                    }
                }
            }
        }
 
    }
}