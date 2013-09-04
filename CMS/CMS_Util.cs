using System;
using System.Diagnostics;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Text;
using System.Linq;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Schema;
using System.Xml.XPath;
using System.Xml.Xsl;
using System.IO;
using System.Threading;
using System.Reflection;
using System.Data;
using System.Web;

namespace _2010Fun.CMS_Yeah
{
    public class CMS_Util
    {
        public string Key { get; set; }
        public string Description { get; set; }
        public string Text { get; set; }

        public List<CMS_Util> GetAll()
        {
            List<CMS_Util> retlist = new List<CMS_Util>();

            DataSet ds = new DataSet();
            ds.ReadXml(HttpContext.Current.Server.MapPath("/CMS/xml/content.xml"));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                CMS_Util newClass = new CMS_Util();
                newClass.Key = dr["Key"].ToString();
                newClass.Description = dr["Description"].ToString();
                newClass.Text = dr[2].ToString();
                retlist.Add(newClass);
            }

            return retlist;
        }

        public CMS_Util GetByKey(string Key)
        {
            CMS_Util retval = new CMS_Util();

            DataSet ds = new DataSet();
            ds.ReadXml(HttpContext.Current.Server.MapPath("/CMS/xml/content.xml"));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr["Key"].ToString() == Key)
                {
                    retval.Key = dr["Key"].ToString();
                    retval.Description = dr["Description"].ToString();
                    retval.Text = dr[2].ToString();
                    break;
                }
            }

            return retval;
        }

        public void UpdateText(CMS_Util ToUpdate)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(HttpContext.Current.Server.MapPath("/CMS/xml/content.xml"));
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                if (dr["Key"].ToString() == ToUpdate.Key)
                {
                    dr.Delete();
                    break;
                }
            }
            DataRow newRow = ds.Tables[0].NewRow();
            newRow["Key"] = ToUpdate.Key;
            newRow["Description"] = ToUpdate.Description;
            newRow[2] = HttpContext.Current.Server.HtmlDecode(ToUpdate.Text);
            ds.Tables[0].Rows.Add(newRow);

            ds.WriteXml(HttpContext.Current.Server.MapPath("/CMS/xml/content.xml"));


        }

        public static string GetText(string key, string description)
        {
            string retval = string.Empty;

            XElement root = XElement.Load(HttpContext.Current.Server.MapPath("/CMS/xml/content.xml"));
            IEnumerable<XElement> address = (from r in root.Elements("TextBlock")
                                             where (string)r.Attribute("Key") == key
                                             && (string)r.Attribute("Description") == description
                                             select r);

            retval = address.FirstOrDefault().Value;

            return retval;
        }
    }
}