using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.Data;

namespace ASPHTML5.Web
{
    public partial class Index : BasePage
    {

        #region Variables
        private PagedDataSource pds = new PagedDataSource();
        #endregion

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

        public string CurrentCultureString
        {
            get
            {
                return ((BasePage)(this.Page)).CurrentCulture;
            }

        }
        #endregion

        #region Page Event Handlers
        /*protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "IndexPage", "id = 'home'", true);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "IndexPage2", "id2 = ''", true);
        }*/

        protected void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            if(!Page.IsPostBack)
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
            if (CurrentPage != pds.PageCount-1)
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
            pds.PageSize = 50;
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
            dtForSale.DataSource = new Property().GetHottestSaleAreas();
            dtForSale.DataBind();
            dtForRent.DataSource = new Property().GetHottestRentAreas();
            dtForRent.DataBind();
        }

        protected string GetLabelText(object dataItem)
        {
            DataRowView dataRowView = (DataRowView)dataItem;
            string type = ((string)dataRowView.Row["PropertyType"]).ToLower();
            if (type.Contains("office") || type.Contains("commercial"))
                type = this.GetLocalResourceObject("DataList.rooms").ToString();
            else
                type = this.GetLocalResourceObject("DataList.bedrooms").ToString();
            return type;
        }

        protected string GetLocalizedString(object dataItem, string key)
        {
            string retVal = "";
            DataRowView dataRowView = (DataRowView)dataItem;
            string value = ((string)dataRowView.Row[key]);
            retVal = Dictionary.GetLocalizedValue(key, base.GetCurrentCulture(), value);
            return retVal;
        }
        #endregion

        
    }
}
