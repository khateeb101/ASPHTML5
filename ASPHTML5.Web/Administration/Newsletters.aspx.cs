using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHTML5.Web
{
    public partial class Newsletters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, CommandEventArgs e)
        {
            string s = e.CommandArgument.ToString();
            Response.Redirect("~/Administration/Newsletter-edit.aspx?id=" + s);
        }       

        protected void btnDelete_Click(object sender, CommandEventArgs e)
        {
            BAL.Newsletter.Delete(Guid.Parse(e.CommandArgument.ToString()));
            grdNewsletters.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Administration/Newsletter-edit.aspx");
        }
    }
}