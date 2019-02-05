using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using ASPHTML5.BAL;
using System.Collections.Generic;


namespace ASPHTML5.Web.Ad
{
    public partial class Ad : System.Web.UI.Page
    {
        private PagedDataSource pds = new PagedDataSource();


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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                BindGrid();
        }

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

        


        private void BindGrid()
        {
            DataTable dt = new Property().GetByLatestTable();
           
            pds.DataSource = dt.DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 50;
            pds.CurrentPageIndex = CurrentPage;
            dtList.DataSource = pds;
            dtList.DataBind();
            //if (CurrentPage == 0)
            //    lnkPrevious.Enabled = false;
            //else
            //    lnkPrevious.Enabled = true;
            //if (CurrentPage == pds.PageCount - 1)
            //    lnkNext.Enabled = false;
            //else
            //    lnkNext.Enabled = true;
            //dtForSale.DataSource = new Property().GetHottestSaleAreas();
            //dtForSale.DataBind();
            //dtForRent.DataSource = new Property().GetHottestRentAreas();
            //dtForRent.DataBind();
        }


        protected string GetLocalizedString(object dataItem, string key)
        {
            string retVal = "";
            DataRowView dataRowView = (DataRowView)dataItem;
            string value = ((string)dataRowView.Row[key]);
            //retVal = Dictionary.GetLocalizedValue(key, base.GetCurrentCulture(), value);
            return retVal;
        }
    }
}
