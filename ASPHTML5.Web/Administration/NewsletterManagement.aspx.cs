using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class NewsletterManagement : AdminBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGrid();
            }
        }

        protected void btnActivateEmail_Click(object sender, CommandEventArgs e)
        {
            MiscActivity.NewsletterSubscribtionActivate(e.CommandArgument.ToString());
            BindGrid();
        }

        private void BindGrid()
        {
            gvLKUP.DataSource = MiscActivity.NewsletterGetAll();
            gvLKUP.DataBind();
        }

        protected void gvLKUP_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            BindGrid();
            gvLKUP.PageIndex = e.NewPageIndex;
            gvLKUP.DataBind();
        }
    }
}
