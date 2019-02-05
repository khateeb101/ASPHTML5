using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class Services : BasePage
    {
        #region Variables
        private PagedDataSource pds = new PagedDataSource();
        #endregion
        public string CurrentCultureString
        {
            get
            {
                return ((BasePage)(this.Page)).CurrentCulture;
            }

        }
        protected string GetLocalizedString(object dataItem, string key)
        {
            string retVal = "";
            DataRowView dataRowView = (DataRowView)dataItem;
            string value = ((string)dataRowView.Row[key]);
            retVal = Dictionary.GetLocalizedValue(key, base.GetCurrentCulture(), value);
            return retVal;
        }
        #region Properties
        public int CurrentPage
        {
            get
            {
                if (this.ViewState["CurrentPage"] == null)
                    return 0;
                else
                    return Convert.ToInt16(this.ViewState["CurrentPage"].ToString());
            }
            set
            {
                this.ViewState["CurrentPage"] = value;
            }
        }
        #endregion

        #region Page Event Handlers

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                BindGrid();
        }
        #endregion

        #region Controls Event Handlers
        protected void lnkPrevious_Click(object sender, ImageClickEventArgs e)
        {
            if (CurrentPage != 0)
            {
                CurrentPage -= 1;
                BindGrid();
            }
        }

        protected void lnkNext_Click(object sender, ImageClickEventArgs e)
        {
            if (CurrentPage != pds.PageCount - 1)
            {
                CurrentPage += 1;
                BindGrid();
            }
        }
        #endregion

        #region Methods
        private void BindGrid()
        {
            DataTable dt = new Property().GetByLatestTable();
            pds.DataSource = dt.DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 5;
            pds.CurrentPageIndex = CurrentPage;
            dtList.DataSource = pds;
            dtList.DataBind();
            if (CurrentPage == 0)
                lnkPrevious.Enabled = false;
            else
                lnkPrevious.Enabled = true;
            if (CurrentPage == pds.PageCount - 1)
                lnkNext.Enabled = false;
            else
                lnkNext.Enabled = true;
        }
        #endregion
    }
}
