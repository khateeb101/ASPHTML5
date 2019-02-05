using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.Data;

namespace ASPHTML5.Web.UserControls
{
    public partial class UCJobListing : System.Web.UI.UserControl
    {
        #region Variables
        private PagedDataSource pds = new PagedDataSource();
        #endregion

        #region Properties
        public DataTable DataListSource { get; set; }
        
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
            {
                BindGrid();
            }
        }

        #endregion

        #region Controls EVent Handlers
        protected void ddlSorting_SelectedIndexChanged(object sender, EventArgs e)
        {
            DoSorting();
            BindGrid();
        }
        
        protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.Equals("lnkbtnPaging"))
            {
                CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());
                BindGrid();
            }
        }

        protected void ddlPageSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            CurrentPage = 0;
            BindGrid();
        }

        protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            LinkButton lnkbtnPage = (LinkButton)e.Item.FindControl("lnkbtnPaging");
            if (lnkbtnPage.CommandArgument.ToString() == CurrentPage.ToString())
            {
                lnkbtnPage.CssClass = "paging_selected";
            }
        }

        protected void lnkChangePage_Click(object sender, EventArgs e)
        {

            if (dtPaging.Items.Count == 1)
            {
                return;
            }
            if (CurrentPage != dtPaging.Items.Count -1)
            {
                CurrentPage += 1;
                lnkChangePage.Text = this.GetLocalResourceObject("Text.Next").ToString();
                imgChangePage.Src = this.GetLocalResourceObject("Image.Next").ToString();
                BindGrid();
            }
            else
            {
                CurrentPage -= 1;
                lnkChangePage.Text = this.GetLocalResourceObject("Text.Previous").ToString();
                imgChangePage.Src = this.GetLocalResourceObject("Image.Previous").ToString();
                BindGrid();
            }
        } 
        #endregion

        #region Methods
        private void DoPaging()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("PageIndex");
            dt.Columns.Add("PageText");
            for (int i = 0; i < pds.PageCount; i++)
            {
                DataRow dr = dt.NewRow();
                dr[0] = i;
                dr[1] = i + 1;
                dt.Rows.Add(dr);
            }
            dtPaging.DataSource = dt;
            dtPaging.DataBind();
        }

        private void BindGrid() 
        {
            pds.DataSource = DataListSource.DefaultView; 
            pds.AllowPaging = true;
            pds.PageSize = Convert.ToInt16(ddlPaging.SelectedValue); 
            pds.CurrentPageIndex = CurrentPage; 
            dtList.DataSource = pds;
            dtList.DataBind();
            lblSearchResult.Text = DataListSource.Rows.Count.ToString();
            DoPaging();
            if (!pds.IsLastPage)
            {
                lnkChangePage.Text = this.GetLocalResourceObject("Text.Next").ToString();
                imgChangePage.Src = this.GetLocalResourceObject("Image.Next").ToString();
            }
            else
            {
                if (!pds.IsFirstPage)
                {
                    lnkChangePage.Text = this.GetLocalResourceObject("Text.Previous").ToString();
                    imgChangePage.Src = this.GetLocalResourceObject("Image.Previous").ToString();
                }
            }
        }

        private void DoSorting()
        {
            int i = Convert.ToInt32(ddlSorting.SelectedValue);
            string sqlSort = "";
            switch (i)
            {
                case 1:
                    sqlSort = "[ModifiedDate] desc";
                    break;
                case 2:
                    sqlSort = "[ModifiedDate] asc";
                    break;
            }
            DataListSource.DefaultView.Sort = sqlSort;
        }
        #endregion

        protected void dtList_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                Label lblTitle = (Label)e.Item.FindControl("lblTitle");
                Label lblDescription = (Label)e.Item.FindControl("lblDescription");
                HiddenField hdnID = (HiddenField)e.Item.FindControl("hdnID");

                Job job = new Job();
                job.Id = new Guid(hdnID.Value);
                job = job.GetById();

                if (Session["MyCulture"] != null)
                {
                    if (Session["MyCulture"].ToString().ToLower() == "ar-lb")
                    {
                        lblTitle.Text = job.ArabicTitle;
                        lblDescription.Text = job.ArabicDescription;
                    }
                    else if (Session["MyCulture"].ToString().ToLower() == "fr-fr")
                    {
                        lblTitle.Text = job.FrenchTitle;
                        lblDescription.Text = job.FrenchDescription;
                    }
                    else
                    {
                        lblTitle.Text = job.Title;
                        lblDescription.Text = job.Description;
                    }
                }
                else
                {
                    lblTitle.Text = job.Title;
                    lblDescription.Text = job.Description;
                }
            }
        }
    }

}