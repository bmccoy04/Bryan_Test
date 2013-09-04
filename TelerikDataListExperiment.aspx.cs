using System;
using System.Collections.Generic;
using Telerik.Web.UI;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bryan_Test
{
    public partial class TelerikDataListExperiment : System.Web.UI.Page
    {
        public const String sPerson = "Persons";

        private List<Person> _Persons;
        public List<Person> Persons
        {
            get { return _Persons ?? (_Persons = (List<Person>)Session[sPerson]); }
            set 
            { 
                _Persons = value;
                Session[sPerson] = _Persons;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            
            if (Persons == null)
                GeneratePersonsList();

            
            rlvMyListView.Rebind();
        }

        protected void rlvMyListView_NeedDataSource(object source, RadListViewNeedDataSourceEventArgs e)
        {
            rlvMyListView.DataSource = Persons;
        }

        protected void rgPeople_NeedDataSource(object source, GridNeedDataSourceEventArgs e)
        {
            rgPeople.DataSource = Persons;
        }

        protected void btnShowList_OnClcik(object source, EventArgs e)
        {
            if (!rgPeople.Visible) return;
            
            rlvMyListView.CurrentPageIndex = rgPeople.CurrentPageIndex;
            rlvMyListView.PageSize = rgPeople.PageSize;

            rlvMyListView.Rebind();

            radPager.Visible = true;
            rlvMyListView.Visible = true;
            rgPeople.Visible = false;
        }

        protected void btnShowGrid_OnClick(object source, EventArgs eventArgs)
        {
            if (!rlvMyListView.Visible) return;
            
            rgPeople.CurrentPageIndex = rlvMyListView.CurrentPageIndex;
            rgPeople.PageSize = rlvMyListView.PageSize;

            rgPeople.Rebind();

            rgPeople.Visible = true;
            rlvMyListView.Visible = false;
            radPager.Visible = false;
        }

        private void GeneratePersonsList()
        {
            var myList = new List<Person>();
            for (int i = 0; i <= 100; i++)
            {
              myList.Add(new Person()
                  {
                      FirstName = "Bryan " + i,
                      LastName = "M " + i,
                      DateOfBirth = DateTime.Now.AddYears(i)
                  });  
            }

            Persons = myList;
        }


    }

    public class Person
    {
        public String FirstName { get; set; }
        public String LastName { get; set; }
        public DateTime DateOfBirth { get; set; }

        public Person()
        {
        }

    }
}