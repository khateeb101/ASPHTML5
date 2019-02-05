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
    public partial class SearchResults : BasePage
    {
        #region Variables
        #endregion

        #region Properties
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadForm();
        }

        private void LoadForm()
        {
            string whereClause = "";
            if (!String.IsNullOrEmpty(Request.Params["PRL"]))
            {
                whereClause = String.Concat(" WHERE PRL like '%", Request.Params["PRL"], "%'");
            }
            else if (Request.RawUrl.ToLower().Contains("real-estate-hotproperties"))//.Params["hot"]))
	        {
                whereClause = String.Concat(" WHERE closed = 1");
	        }
            else
            {
                string propertyFor = Request.Params["For"];
                string where = Request.Params["Where"];
                string where2 = Request.Params["Where2"];
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

                if (propertyFor.ToLower() == "short")
                {
                    ltrTitle.Text = GetLocalResourceObject("Text.PropertiesShortRent").ToString();
                }
                else if (propertyFor.ToLower() == "long")
                {
                    ltrTitle.Text = GetLocalResourceObject("Text.PropertiesLongRent").ToString();
                }
                else if (propertyFor.ToLower() == "rent")
                {
                    ltrTitle.Text = GetLocalResourceObject("Text.PropertiesRent").ToString();
                }
                else if (propertyFor.ToLower() == "sale")
                {
                    ltrTitle.Text = GetLocalResourceObject("Text.PropertiesBuy").ToString();
                }
                else
                {
                    ltrTitle.Text = GetLocalResourceObject("Text.Properties").ToString();
                }
                
                
 
                if (!String.IsNullOrEmpty(propertyFor) && propertyFor != "All")
                    if (propertyFor.ToLower() == "long")
                        whereClause = String.Concat(" WHERE (PropertyFor like '%rent%' and PropertyFor not like '%short%')");
                    else if (propertyFor.ToLower() == "rent")
                        whereClause = String.Concat(" WHERE (PropertyFor like '%rent%')");
                    else                       
                        whereClause = String.Concat(" WHERE PropertyFor like '%", propertyFor, "%'");
                if(!String.IsNullOrEmpty(where))
                {
                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    if (!String.IsNullOrEmpty(where2))
                    {
                        whereClause = String.Concat(whereClause, "(District = '", where, "' OR District = '", where2, "')");
                    }
                    else
                    {
                        whereClause = String.Concat(whereClause, "District = '", where, "'");
                    }
                }
                if (!String.IsNullOrEmpty(qadaa))
                {
                    if (String.IsNullOrEmpty(whereClause))
                        whereClause = " WHERE ";
                    else
                        whereClause = String.Concat(whereClause, " AND ");
                    whereClause = String.Concat(whereClause, "qadaa like '", qadaa.Replace("_","%"), "'");
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
                if(!String.IsNullOrEmpty(priceFrom) || !String.IsNullOrEmpty(priceTo))
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
                                whereClause = String.Concat(whereClause, "((", priceFrom, " <= SalePrice" ,") OR (", priceFrom, " <= RentPrice", "))");
                            if (propertyFor == Enums.PropertyFor.Sale.ToString())
                                whereClause = String.Concat(whereClause, "(", priceFrom, " <= SalePrice ",")");
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
                    whereClause = String.Concat(whereClause, "(Quality = 'Not Completed' or Quality = 'Under construction')");
                }
            }
            UC_PropertiesListing1.DataListSource = new Property().GetBySearchTable(whereClause);

        }
        #endregion

        #region Controls Event Handlers
        #endregion

        #region Methods
        #endregion
    }
}
