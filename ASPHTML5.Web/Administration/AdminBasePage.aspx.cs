using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHTML5.Web
{
    public partial class AdminBasePage : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["IsAuthenticated"] != null)
                {
                    if (!Convert.ToBoolean(Session["IsAuthenticated"]))
                    {
                        Response.Redirect("Login.aspx");
                    }
                }
                else
                    Response.Redirect("Login.aspx");
            }
        }
    }
}
