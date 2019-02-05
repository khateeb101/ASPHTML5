using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.Data;
using System.Text.RegularExpressions;
using System.Net;

namespace ASPHTML5.Web.UserControls
{
    public partial class UCPropertiesListing : System.Web.UI.UserControl
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

        public string CurrentCultureString
        {
            get
            {
                return ((BasePage)(this.Page)).CurrentCulture;
            }
           
        }
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //if(pds == null)
                //    pds = new PagedDataSource();
            }
             string currentCulture = GetCurrentCulture();
             if (currentCulture == "English")
             {
                 if (Request["For"] != null)
                 {
                     if (Request["For"].ToLower() == "rent")
                     {
                         Literal4.Text = this.GetLocalResourceObject("Search.PropertiesFoundrent").ToString();
                     }
                 }
             }
                DoSorting();
                BindGrid();               
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
                DoSorting();
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
            if (CurrentPage != dtPaging.Items.Count -1)
            {
                CurrentPage += 1;
                lnkChangePage.Text = this.GetLocalResourceObject("Text.Next").ToString();
                imgChangePage.Src = this.GetLocalResourceObject("Image.Next").ToString();
                BindGrid();
                DoSorting();
            }
            else
            {
                CurrentPage -= 1;
                lnkChangePage.Text = this.GetLocalResourceObject("Text.Previous").ToString();
                imgChangePage.Src = this.GetLocalResourceObject("Image.Previous").ToString();
                BindGrid();
                DoSorting();
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

        protected string GetAdditionalInfo(object dataItem)
        {
            string retVal = "";
            DataRowView dataRowView = (DataRowView)dataItem;
            string additionalInfo = dataRowView["Web_GuideDescription"].ToString();
            additionalInfo = (Regex.Replace(additionalInfo, "<[^>]*(>|$)", string.Empty)).Replace("&nbsp;", string.Empty);
            if (!String.IsNullOrEmpty(additionalInfo))
            {
                string[] allValues = additionalInfo.Split(new string[] { "-----" },StringSplitOptions.None);//additionalInfo.Split(new char[]{'-','-','-','-','-'});
                if (allValues.Length > 0)
                {
                    string currentCulture = GetCurrentCulture();
                    switch (currentCulture)
                    {
                        case "English":
                            retVal = allValues[0];
                            break;
                        case "French":
                            if (allValues.Length > 1)
                                retVal = allValues[1];
                            else
                                retVal = allValues[0];
                            break;
                        case "Arabic":
                            if (allValues.Length > 2)
                                retVal = allValues[2];
                            else
                                retVal = allValues[0];
                            break;
                    }
                }
            }
            return retVal.Replace("&nbsp;", string.Empty);
        }

        private void BindGrid() 
        {
            int count = 0;
            if (ddlNeigh.SelectedValue != "")
            {
                DataRow[] rows = DataListSource.Select("District = '" + ddlNeigh.SelectedValue + "'");
                DataTable _temp = new DataTable();
                if (rows.Length > 0)
                {
                    _temp = rows.CopyToDataTable();
                    int i = Convert.ToInt32(ddlSorting.SelectedValue);
                    string sqlSort = "";
                    switch (i)
                    {
                        case 1:
                            sqlSort = "[SalePrice] asc, [RentPrice] asc";
                            break;
                        case 2:
                            sqlSort = "[StartDate] desc";
                            break;
                    }
                    _temp.DefaultView.Sort = sqlSort;   
                }

                        
                
                pds.DataSource = _temp.DefaultView;
                count = rows.Count();
            }
            else
            {
                pds.DataSource = DataListSource.DefaultView;
                count = DataListSource.Rows.Count;
            }
           
           
            

            
            pds.AllowPaging = true;
            pds.PageSize = Convert.ToInt16(ddlPaging.SelectedValue); 
            pds.CurrentPageIndex = CurrentPage; 
            dtList.DataSource = pds;
            dtList.DataBind();
            lblSearchResult.Text = count.ToString();
            DoPaging();
            if (pds.PageCount == 1)
            {
                lnkChangePage.Visible = false;
                imgChangePage.Visible = false;
            }
            else
            {
                lnkChangePage.Visible = true;
                imgChangePage.Visible = true;
            }
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
                    sqlSort = "[SalePrice] asc, [RentPrice] asc";
                    break;
                case 2:
                    sqlSort = "[StartDate] desc";
                    break;
            }
            DataListSource.DefaultView.Sort = sqlSort;               
        }

        protected string GetLocalizedString(object dataItem, string key)
        {
            string retVal = "";
            DataRowView dataRowView = (DataRowView)dataItem;
            string value = dataRowView.Row[key] as string;
            retVal = Dictionary.GetLocalizedValue(key, this.GetCurrentCulture(), value);
            return retVal;
        }

        internal string GetCurrentCulture()
        {
            string retVal = "";
            string currentCulture = Convert.ToString(Session["MyCulture"]);
            if (String.IsNullOrEmpty(currentCulture))
                retVal = "English";
            switch (currentCulture)
            {
                case "en-US":
                    retVal = "English";
                    break;
                case "ar-LB":
                    retVal = "Arabic";
                    break;
                case "fr-FR":
                    retVal = "French";
                    break;
            }
            return retVal;
        }
        #endregion
    }
}