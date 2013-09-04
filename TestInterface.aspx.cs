using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bryan_Test
{
    public partial class TestInterface : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<ITestUser> myList = new List<ITestUser>();

                myList.Add(new TestUser());
                myList.Add(new AnotherTestUser());
                myList.Add(new MyThirdTestUser());

                
                litpersonsName.Text = myList[0].getUserName("Bryan");

                litpersons2ndName.Text = myList[1].getUserName("Bryan");

                lit3.Text = ((ITestUser2)myList[2]).getUserLastName("Bryan");
            }
        }
    }




    public interface ITestUser
    {
        string getUserName(String Name);
    }

    public interface ITestUser2 : ITestUser
    {
        string getUserLastName(string Name);
    }

    public class TestUser : ITestUser
    {
        public string getUserName(String Name)
        {
            return Name;
        }
    }

    public class AnotherTestUser : ITestUser
    {
        public string getUserName(String Name)
        {
            return Name + " 2";
        }
    }

    public class MyThirdTestUser : ITestUser2
    {
        public string getUserName(String Name)
        {
            return Name;
        }

        public string getUserLastName(string Name)
        {
            return "<span style='color:red'>Last name: " + Name + "</span>";
        }
    }
}