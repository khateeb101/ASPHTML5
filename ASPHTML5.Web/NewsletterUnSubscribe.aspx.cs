using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class NewsletterUnSubscribe : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string email = Request.Params["Email"];
                MiscActivity.NewsletterSubscribtion(email, false);
                ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "imgSubmit", "<script language='javascript'>alert('" + this.GetLocalResourceObject("Text.EmailUnsubscribed") + "');</script>", false);
                Response.Redirect("~/Index.aspx");
            }
        }
    }
}
