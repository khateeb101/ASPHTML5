using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.Data;

namespace ASPHTML5.Web.Mobile
{
    public partial class Default : BasePage
    {
        private PagedDataSource pds = new PagedDataSource();
        ObjectDataSource sqresults = new ObjectDataSource();
        string sqlSort = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!IsPostBack)
            //{
            DoSorting();
            LoadForm();
            //}
        }

        protected string GetLocalizedString(object dataItem, string key)
        {
            string retVal = "";
            DataRowView dataRowView = (DataRowView)dataItem;
            string value = dataRowView.Row[key] as string;
            retVal = Dictionary.GetLocalizedValue(key, this.GetCurrentCulture(), value);
            return retVal;
        }

        protected string GetAdditionalInfo(string additional)
        {
            string retVal = "";

            string additionalInfo = additional;
            if (!String.IsNullOrEmpty(additionalInfo))
            {
                string[] allValues = additionalInfo.Split(new string[] { "-----" }, StringSplitOptions.None);//additionalInfo.Split(new char[]{'-','-','-','-','-'});
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



        private void LoadForm()
        {
            string whereClause = "";
            if (!String.IsNullOrEmpty(Request.Params["PRL"]))
            {
                whereClause = String.Concat(" WHERE PRL like '%", Request.Params["PRL"], "%'");
            }
            else if (!String.IsNullOrEmpty(Request.Params["hot"]))
            {
                whereClause = String.Concat(" WHERE closed = 1");
            }
            else
            {
                string propertyFor = Request.Params["For"];
                string where = "";
                if (ddlNeigh.SelectedValue != "")
                {
                    where = ddlNeigh.SelectedValue;
                }
                else
                {
                    where = Request.Params["Where"];
                }
                string qadaa = Request.Params["qadaa"];
                string priceFrom = Request.Params["PriceFrom"];
                string priceTo = Request.Params["PriceTo"];
                string bdFrom = Request.Params["BdFrom"];
                string bdTo = Request.Params["BdTo"];
                string type = Request.Params["Type"];
                string newProp = Request.Params["New"];
                string sizeFrom = Request.Params["SizeFrom"];
                string sizeTo = Request.Params["SizeTo"];

                if (propertyFor == null)
                    propertyFor = "";

                //if (propertyFor.ToLower() == "short")
                //{
                //    ltrTitle.Text = GetLocalResourceObject("Text.PropertiesShortRent").ToString();
                //}
                //else if (propertyFor.ToLower() == "long")
                //{
                //    ltrTitle.Text = GetLocalResourceObject("Text.PropertiesLongRent").ToString();
                //}
                //else if (propertyFor.ToLower() == "sale")
                //{
                //    ltrTitle.Text = GetLocalResourceObject("Text.PropertiesBuy").ToString();
                //}
                //else
                //{
                //    ltrTitle.Text = GetLocalResourceObject("Text.Properties").ToString();
                //}



                if (!String.IsNullOrEmpty(propertyFor) && propertyFor != "All")
                {
                    whereClause = String.Concat(" WHERE PropertyFor like '%", propertyFor, "%'");
                }
                if (!String.IsNullOrEmpty(where))
                {
                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    whereClause = String.Concat(whereClause, "District = '", where, "'");
                }
                if (!String.IsNullOrEmpty(qadaa))
                {
                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    whereClause = String.Concat(whereClause, "qadaa = '", qadaa, "'");
                }
                if (Request["New"] != null && !String.IsNullOrEmpty(Request["New"].ToString()))
                {
                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    if (Request["New"].ToString() == "true")
                        whereClause = String.Concat(whereClause, "(quality = 'Not Completed' or quality = 'Under construction' or  quality = 'Building site' or  quality = 'Core & Shell') ");
                    else
                        whereClause = String.Concat(whereClause, "quality = '", Request["New"].ToString(), "'");
                }
                if (!String.IsNullOrEmpty(priceFrom) || !String.IsNullOrEmpty(priceTo))
                {

                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    if (!String.IsNullOrEmpty(priceFrom) && !String.IsNullOrEmpty(priceTo))
                    {
                        if (propertyFor == "All")
                            whereClause = String.Concat(whereClause, "((", priceFrom, " <= SalePrice AND SalePrice <= ", priceTo, ") OR (", priceFrom, " <= RentPrice AND RentPrice<= ", priceTo, "))");
                        if (propertyFor == Enums.PropertyFor.Sale.ToString())
                            whereClause = String.Concat(whereClause, "(", priceFrom, " <= SalePrice AND SalePrice <= ", priceTo, ")");
                        if (propertyFor.ToLower() == Enums.PropertyFor.Rent.ToString().ToLower() || propertyFor.ToLower() == "short" || propertyFor.ToLower() == "long")
                            whereClause = String.Concat(whereClause, "(", priceFrom, " <= RentPrice AND RentPrice<= ", priceTo, ")");
                    }
                    else
                    {
                        if (!String.IsNullOrEmpty(priceFrom))
                        {
                            if (propertyFor == "All")
                                whereClause = String.Concat(whereClause, "((", priceFrom, " <= SalePrice", ") OR (", priceFrom, " <= RentPrice", "))");
                            if (propertyFor == Enums.PropertyFor.Sale.ToString())
                                whereClause = String.Concat(whereClause, "(", priceFrom, " <= SalePrice ", ")");
                            if (propertyFor.ToLower() == Enums.PropertyFor.Rent.ToString().ToLower() || propertyFor.ToLower() == "short" || propertyFor.ToLower() == "long")
                                whereClause = String.Concat(whereClause, "(", priceFrom, " <= RentPrice ", ")");
                        }
                        if (!String.IsNullOrEmpty(priceTo))
                        {
                            if (propertyFor == "All")
                                whereClause = String.Concat(whereClause, "((", "SalePrice <= ", priceTo, ") OR (", " RentPrice<= ", priceTo, "))");
                            if (propertyFor == Enums.PropertyFor.Sale.ToString())
                                whereClause = String.Concat(whereClause, "(", "SalePrice <= ", priceTo, ")");
                            if (propertyFor.ToLower() == Enums.PropertyFor.Rent.ToString().ToLower() || propertyFor.ToLower() == "short" || propertyFor.ToLower() == "long")
                                whereClause = String.Concat(whereClause, "(", "RentPrice<= ", priceTo, ")");
                        }
                    }
                }
                if (!String.IsNullOrEmpty(sizeFrom) || !String.IsNullOrEmpty(sizeTo))
                {

                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    if (!String.IsNullOrEmpty(sizeFrom) && !String.IsNullOrEmpty(sizeTo))
                    {
                        whereClause = String.Concat(whereClause, "(", sizeFrom, " <= size AND size <= ", sizeTo, ")");
                    }
                    else
                    {
                        if (!String.IsNullOrEmpty(sizeFrom))
                        {
                            if (propertyFor == "All")
                                whereClause = String.Concat(whereClause, "((", sizeFrom, " <= size", ") OR (", sizeFrom, " <= size", "))");
                        }
                        if (!String.IsNullOrEmpty(sizeTo))
                        {
                            if (propertyFor == "All")
                                whereClause = String.Concat(whereClause, "((", "size <= ", sizeTo, ") OR (", " size<= ", sizeTo, "))");
                        }
                    }
                }
                if (!String.IsNullOrEmpty(bdFrom) || !String.IsNullOrEmpty(bdTo))
                {
                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    if (!String.IsNullOrEmpty(bdFrom) && !String.IsNullOrEmpty(bdTo))
                    {
                        whereClause = string.Concat(whereClause, "(", bdFrom, "<= TotalBedrooms AND TotalBedrooms <=", bdTo, ")");
                    }
                    else
                    {
                        if (!String.IsNullOrEmpty(bdFrom))
                        {
                            whereClause = string.Concat(whereClause, "(", bdFrom, "<= TotalBedrooms", ")");
                        }
                        if (!String.IsNullOrEmpty(bdTo))
                        {
                            whereClause = string.Concat(whereClause, "(", "TotalBedrooms <=", bdTo, ")");
                        }
                    }
                }
                if (!String.IsNullOrEmpty(type))
                {
                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    whereClause = String.Concat(whereClause, "(PropertyType like '%", type, "%')");
                }
                if (!String.IsNullOrEmpty(newProp))
                {
                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    whereClause = String.Concat(whereClause, "(StartDate + ", MiscActivity.GetSettings("DaysCount").ToString(), " >= GETDATE())");
                }
            }

            if (sqlSort != "")
            {
                whereClause += " order by " + sqlSort;
            }
            else
            {
                whereClause += " order by [StartDate] desc";
            }

            pagesize = 5;

            pds.DataSource = new BAL.Property().GetBySearchTable(whereClause).AsDataView();
            lblSearchResult.Text = pds.DataSourceCount.ToString();

            Session["propCount"] = pds.Count.ToString();
            //lblRecordCount.Text = pds.Count.ToString();
            pds.AllowPaging = true;
            pds.PageSize = pagesize;

            if (CurrentPage >= pds.PageCount - 1)
            {
                CurrentPage = pds.PageCount - 1;
                btnNext.Enabled = false;
                //btnNext2.Enabled = false;
            }
            else
            {
                btnNext.Enabled = true;
                //btnNext2.Enabled = true;
            }

            if (CurrentPage <= 0)
            {
                CurrentPage = 0;
                btnPrev.Enabled = false;
                //btnPrev2.Enabled = false;
            }
            else
            {
                btnPrev.Enabled = true;
                //btnPrev2.Enabled = true;
            }


            pds.CurrentPageIndex = CurrentPage;
            if (pds != null && pds.Count > 0)
            {
                //dtPaging.SelectedIndex = pds.CurrentPageIndex;
                //dlPaging2.SelectedIndex = pds.CurrentPageIndex;
                propsRepeater.DataSource = pds;
                propsRepeater.DataBind();
            }
            else
            {
                propsRepeater.Visible = false;
            }
            DoPaging();
        }

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

        int totalPages;
        private int pagesize;

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            CurrentPage--;
            LoadForm();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            CurrentPage++;
            LoadForm();
        }

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

            //dtPaging.DataSource = dt;
            //dtPaging.DataBind();            
        }


        protected void dlPaging_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            LinkButton lnkbtnPage = (LinkButton)e.Item.FindControl("lnkbtnPaging");
            if (lnkbtnPage.CommandArgument.ToString() == CurrentPage.ToString())
            {
                lnkbtnPage.Style.Add("font-weight", "bold");
            }
        }

        protected void dlPaging_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName.Equals("lnkbtnPaging"))
            {
                CurrentPage = Convert.ToInt16(e.CommandArgument.ToString());
                LoadForm();
            }
        }

        protected void ddlSorting_SelectedIndexChanged(object sender, EventArgs e)
        {
            DoSorting();
            LoadForm();
        }

        private void DoSorting()
        {
            int i = Convert.ToInt32(ddlSorting.SelectedValue);
            switch (i)
            {
                case 1:
                    sqlSort = "[SalePrice] asc, [RentPrice] asc";
                    break;
                case 2:
                    sqlSort = "[StartDate] desc";
                    break;
            }
        }
    }
}