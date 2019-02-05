using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ASPHTML5.Web
{
    public partial class DocumentViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request["id"] != null)
                {
                    BAL.Newsletter news = BAL.Newsletter.Load(Guid.Parse(Request["id"]));
                    if (news != null)
                    {
                        Response.ContentType = "application/pdf";
                        Response.BinaryWrite(news.PDF);
                    }                                       
                }
            }
        }
    }
}