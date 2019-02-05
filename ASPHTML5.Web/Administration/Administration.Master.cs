using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHTML5.Web
{
    public partial class Administration : System.Web.UI.MasterPage
    {

        #region Variables
        #endregion

        #region Properties
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        #endregion

        #region Controls Event Handlers
        protected void lnkLanguage_Click(object sender, CommandEventArgs e)
        {
            Session["MyCulture"] = e.CommandArgument;
            Response.Redirect(Request.Path);
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            Session["IsAuthenticated"] = false;
            Response.Redirect("AdminIndex.aspx");
        }
        #endregion

        #region Methods
        #endregion
    }
}
