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
    public partial class PropertyDetails : BasePage
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
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string prl = Request.Params["ID"];
                if (prl == null)
                {
                    var context = loadContextWithRouteData();

                    if (context.Items["PRL"] != null)
                    {
                        prl = context.Items["PRL"].ToString();
                    }
                }
                string currentCulture = base.GetCurrentCulture();
                Property propertyDetails = new Property().GetByPRL(prl);
                String text = "";
                if (propertyDetails == null)
                {
                    Response.Redirect("~/index");
                }

                if (propertyDetails.TotalBedrooms + propertyDetails.MasterBedRooms + propertyDetails.FamilyRoom > 0)
                    text = String.Concat(text, @"<tr><td>", this.GetLocalResourceObject("DataList.bedrooms").ToString(), @"</td><td style='width: 77px'>", (propertyDetails.TotalBedrooms + propertyDetails.MasterBedRooms + propertyDetails.FamilyRoom).ToString(), @"</td></tr>");
                //text = String.Concat(text, @"<tr><td>", GetLabelText(propertyDetails.PropertyType), @"</td><td style='width: 77px'>", propertyDetails.TotalBedrooms.ToString(), @"</td></tr>");
                if (propertyDetails.Age != 0)
                    text = String.Concat(text, @"<tr><td>", this.GetLocalResourceObject("Text.BuildingAge").ToString(), @"</td><td style='width: 77px'>", propertyDetails.Age.ToString(), @"</td></tr>");
                if (propertyDetails.DriverRoom != 0)
                    text = String.Concat(text, @"<tr><td>", this.GetLocalResourceObject("Text.DriverRoom").ToString(), @"</td><td style='width: 77px'>", propertyDetails.DriverRoom.ToString(), @"</td></tr>");
                //if (propertyDetails.Floor != 0)
                //    text = String.Concat(text, @"<tr><td>", this.GetLocalResourceObject("Text.FloorNumber").ToString(), @"</td><td style='width: 77px'>", propertyDetails.Floor.ToString(), @"</td></tr>");
                lblLocation.Text = String.Concat(Dictionary.GetLocalizedValue("Qadaa", currentCulture, propertyDetails.Qadaa), ", ", Dictionary.GetLocalizedValue("District", currentCulture, propertyDetails.District));
                if (propertyDetails.MaidRoom != 0)
                    text = String.Concat(text, @"<tr><td>", this.GetLocalResourceObject("Text.MaidRoom").ToString(), @"</td><td style='width: 77px'>", propertyDetails.MaidRoom.ToString(), @"</td></tr>");
                if (propertyDetails.Parkings != 0)
                    text = String.Concat(text, @"<tr><td>", this.GetLocalResourceObject("Text.Parking").ToString(), @"</td><td style='width: 77px'>", propertyDetails.Parkings.ToString(), @"</td></tr>");
                lblPrice.Text = propertyDetails.PropertyFor.ToLower().Contains("rent") || propertyDetails.PropertyFor.ToLower().Contains("short") ? string.Format("{0:###,###,##0}", propertyDetails.RentPrice) + "$" : string.Format("{0:###,###,##0}", propertyDetails.SalePrice) + "$";
                if (propertyDetails.PropertyFor.ToLower().Contains("rent") && propertyDetails.PropertyFor.ToLower().Contains("sale"))
                {
                    lblPrice.Text = string.Format("{0:###,###,##0}", propertyDetails.SalePrice) + " / " + string.Format("{0:###,###,##0}", propertyDetails.RentPrice) + "$";
                }


                lblPropertyType.Text = Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType);                
                lblReference.Text = propertyDetails.PRL;
                lblSurface.Text = propertyDetails.Size.ToString() + "m2";
                //lblPropertyType1.Text = Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType);
                lblPropertyFor.Text = Dictionary.GetLocalizedValue("PropertyFor", currentCulture, propertyDetails.PropertyFor); ;
                litDetails.Text = String.Concat(@"<table width='100%' cellpadding='0' cellspacing='0' border='0'>", text, "</table>");
                Literal6.Text = Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType) + " " + lblPropertyFor.Text + " " +
                     " " + GetLocalResourceObject("in") + " " + lblLocation.Text + ", " + GetAdditionalInfo(propertyDetails.Web_GuideDescription);
                MyTitle = Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType) +
                     " " +
                    lblPropertyFor.Text +
                    " " + GetLocalResourceObject("in") + " " +
                    Dictionary.GetLocalizedValue("District", currentCulture, propertyDetails.District) + ", " + lblPrice.Text + ", " + lblSurface.Text + ", Sodeco Gestion";

                lblPropertyType1.Text = lblPrice.Text + " - " + lblSurface.Text + " " + Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType)
                    + " " + lblPropertyFor.Text +
                    " " + GetLocalResourceObject("in") + " " +
                    lblLocation.Text;
                lblPropertyFor.Text = "";

                if (propertyDetails.PropertyFor.ToLower().Contains("sale"))
                {
                    ltBuy.Visible = true;
                    ltRent.Visible = false;
                }
                else
                {
                    ltRent.Visible = true;
                    ltBuy.Visible = false;
                }

                imgProp.ImageUrl = "~/ImageViewer.aspx?big=false&med=false&ID=" + propertyDetails.TopImageId;
                if (propertyDetails.TopImageId.ToString() != "00000000-0000-0000-0000-000000000000")
                {
                    lnkPropGallery.Visible = true;
                    ltrScript.Text = "<script type=\"text/javascript\">"
                                            + "$(document).ready(function () {"
                                            + "$(\".lnkPropGallery\").fancybox({"
                                            + "fitToView: false,"
                                            + "width: '90%',"
                                            + "height: '100%',"
                                            + "autoSize: false,"
                                            + "closeClick: false,"
                                            + "openEffect: 'fade',"
                                            + "closeEffect: 'fade',"
                                            + "openSpeed: 1000,"
                                            + "closeSpeed: 500,"
                                            + "href: '/property-gallery.aspx?id=" + propertyDetails.PRL + "',"
                                            + "type: 'iframe'"
                                            + "});"
                                            + "});"
                                            + "</script>";
                }

                //hlArrange.NavigateUrl = "~/Feedback.aspx?PRL=" + propertyDetails.PRL;
                ltrScriptArrange.Text = "<script type=\"text/javascript\">" +
                                        "function arrangePopup() {" +
                                        "$.fancybox.open({" +
                                        "href: '/property-view.aspx?PRL=" + propertyDetails.PRL + "'," +
                                        "type: 'iframe'," +
                                        "padding: 8" +
                                        "});" +
                                        "}" +    
                                        "</script>";
            }

            BindGrid();
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
        #endregion

        #region Controls Event Handelrs
        //protected void lnkPrevious_Click(object sender, ImageClickEventArgs e)
        //{
        //    if (CurrentPage != 0)
        //    {
        //        CurrentPage -= 1;
        //        BindGrid();
        //    }
        //}

        //protected void lnkNext_Click(object sender, ImageClickEventArgs e)
        //{
        //    if (CurrentPage != pds.PageCount - 1)
        //    {
        //        CurrentPage += 1;
        //        BindGrid();
        //    }
        //}
        #endregion

        #region Methods
        private void BindGrid()
        {
            //string prl = Request.Params["ID"];
            //PropertyImage image = new PropertyImage();
            //image.PRL = prl;
            //DataTable dt = image.GetByPRLTable();
            //pds.DataSource = dt.DefaultView;
            //pds.AllowPaging = true;
            //pds.PageSize = 1;
            //pds.CurrentPageIndex = CurrentPage;
            //dtList.DataSource = pds;
            //dtList.DataBind();
            //if (CurrentPage == 0)
            //    lnkPrevious.Visible = false;
            //else
            //    lnkPrevious.Visible = true;
            //if (CurrentPage == pds.PageCount - 1)
            //    lnkNext.Visible = false;
            //else
            //    lnkNext.Visible = true;
        }

        protected string GetLabelText(string type)
        {
            type = type.ToLower();
            if (type.Contains("office") || type.Contains("commercial"))
                type = this.GetLocalResourceObject("DataList.rooms").ToString();
            else
                type = this.GetLocalResourceObject("DataList.bedrooms").ToString();
            return type;
        }
        #endregion
    }
}
