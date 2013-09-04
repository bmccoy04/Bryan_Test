using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Bryan_Test.services
{
    /// <summary>
    /// Summary description for GetPDF
    /// </summary>
    public class view : IHttpHandler
    {
        public string PdfFilePath
        {
            get { return "/PDF/"; }
        }

        public void ProcessRequest(HttpContext context)
        {
//            String doc = context.Request["doc"];
//            string pdfFilePath = context.Server.MapPath(PdfFilePath) + doc;
//
//
//            context.Response.AddHeader("Content-type", "Content-Type: application/pdf");
//            context.Response.WriteFile(pdfFilePath); 
            context.Response.Write("test");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}