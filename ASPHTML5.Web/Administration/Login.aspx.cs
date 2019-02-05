using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class Login : System.Web.UI.Page
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
            }
        }
        #endregion

        #region Controls Event Handlers
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (MiscActivity.GetSettings("Password").ToString() == txtPassword.Text
                && MiscActivity.GetSettings("AdminUser").ToString().ToLower() == txtUsername.Text.ToLower())
            {
                Session["IsAuthenticated"] = true;
                if (String.IsNullOrEmpty(Request.Params["ReturnUrl"]))
                {
                    Response.Redirect("AdminIndex.aspx");
                }
                else
                {
                    Response.Redirect(Request.Params["ReturnUrl"]);
                }
            }
            else
            {
                txtFailureText.Text = "Incorrect Username or Password!!";
            }

        }
        #endregion
    }
}
