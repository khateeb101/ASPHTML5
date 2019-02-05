using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHTML5.Web.Mobile
{
    public partial class Mobile : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkLanguage_Click(object sender, CommandEventArgs e)
        {
            Session["MyCulture"] = e.CommandArgument;
            Response.Redirect(Request.RawUrl);
        }
    }
}