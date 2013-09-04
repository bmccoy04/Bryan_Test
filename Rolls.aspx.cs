using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bryan_Test
{
    public partial class Rolls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateNumbers();
        }

        private void GenerateNumbers()
        {
            List<int> numbers = new List<int>();
            int total = 10000;
            Random myRand = new Random();

            for (int i = 0; i < total; i++)
            {
                numbers.Add(myRand.Next(1,7) + myRand.Next(1,7));
            }

            int numOf7s = numbers.Count(n => n == 7);
            int numOf8s = numbers.Count(n => n == 8);
            int numOf6s = numbers.Count(n => n == 6);

            litNumOf6s.Text = numOf6s.ToString();
            litNumOf7s.Text = numOf7s.ToString();
            litNumOf8s.Text = numOf8s.ToString();
            double combined = ((((double)numOf6s + (double)numOf8s) / (double)total) * 100.00);
            litNum6s8s.Text = combined.ToString();
            litNumOfMulti.Text = numbers.Count(n => n == 1 || n == 2 || n == 3 || n >= 12).ToString();
            litNumOfOthers.Text = numbers.Count(n => n == 4 || n == 5 || n == 9 || n == 10 || n == 11).ToString();
            rptNumbers.DataSource = numbers;
            rptNumbers.DataBind();
        }
    }
}