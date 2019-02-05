using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        #region Variables
        #endregion

        #region Properties
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtUsername.Text = MiscActivity.GetSettings("AdminUser").ToString();
            }
        }
        #endregion

        #region Controls Event Handlers
        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            MiscActivity.UpdateSettings("Password", txtPassword.Text);
            Session["IsAuthenticated"] = false;
            Response.Redirect("Login.aspx");
        }
        #endregion
    }
}
