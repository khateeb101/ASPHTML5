using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web.Mobile
{
    public partial class Prop : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string prl = Request.Params["ID"];
                string currentCulture = GetCurrentCulture();
                Property propertyDetails = new Property().GetByPRL(prl);
                imagesList.DataSource = propertyDetails.Images;
                imagesList.DataBind();
                String text = "";
                if (propertyDetails.TotalBedrooms + propertyDetails.MasterBedRooms + propertyDetails.FamilyRoom > 0)
                    text = String.Concat(text, @"<tr><td style='width: 31%'>", this.GetLocalResourceObject("DataList.bedrooms").ToString(), @"</td><td style='width: 77px'>", (propertyDetails.TotalBedrooms + propertyDetails.MasterBedRooms + propertyDetails.FamilyRoom).ToString(), @"</td></tr>");
                //text = String.Concat(text, @"<tr><td>", GetLabelText(propertyDetails.PropertyType), @"</td><td style='width: 77px'>", propertyDetails.TotalBedrooms.ToString(), @"</td></tr>");
                if (propertyDetails.Age != 0)
                    text = String.Concat(text, @"<tr><td style='width: 31%'>", this.GetLocalResourceObject("Text.BuildingAge").ToString(), @"</td><td style='width: 77px'>", propertyDetails.Age.ToString(), @"</td></tr>");
                if (propertyDetails.DriverRoom != 0)
                    text = String.Concat(text, @"<tr><td style='width: 31%'>", this.GetLocalResourceObject("Text.DriverRoom").ToString(), @"</td><td style='width: 77px'>", propertyDetails.DriverRoom.ToString(), @"</td></tr>");
                if (propertyDetails.Floor != 0)
                    text = String.Concat(text, @"<tr><td style='width: 31%'>", this.GetLocalResourceObject("Text.FloorNumber").ToString(), @"</td><td style='width: 77px'>", propertyDetails.Floor.ToString(), @"</td></tr>");
                lblLocation.Text = String.Concat(Dictionary.GetLocalizedValue("Qadaa", currentCulture, propertyDetails.Qadaa), ", ", Dictionary.GetLocalizedValue("District", currentCulture, propertyDetails.District));
                if (propertyDetails.MaidRoom != 0)
                    text = String.Concat(text, @"<tr><td style='width: 31%'>", this.GetLocalResourceObject("Text.MaidRoom").ToString(), @"</td><td style='width: 77px'>", propertyDetails.MaidRoom.ToString(), @"</td></tr>");
                if (propertyDetails.Parkings != 0)
                    text = String.Concat(text, @"<tr><td style='width: 31%'>", this.GetLocalResourceObject("Text.Parking").ToString(), @"</td><td style='width: 77px'>", propertyDetails.Parkings.ToString(), @"</td></tr>");
                lblPrice.Text = propertyDetails.PropertyFor.ToLower().Contains("rent") || propertyDetails.PropertyFor.ToLower().Contains("short") ? string.Format("{0:###,###,##0}", propertyDetails.RentPrice) + "$" : string.Format("{0:###,###,##0}", propertyDetails.SalePrice) + "$";
                if (propertyDetails.PropertyFor.ToLower().Contains("rent") && propertyDetails.PropertyFor.ToLower().Contains("sale"))
                {
                    lblPrice.Text = string.Format("{0:###,###,##0}", propertyDetails.SalePrice) + " / " + string.Format("{0:###,###,##0}", propertyDetails.RentPrice) + "$";
                }


                lblPropertyType.Text = Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType);
                hlArrange.NavigateUrl = "~/Mobile/Feedback.aspx?PRL=" + propertyDetails.PRL;
                lblReference.Text = propertyDetails.PRL;
                lblSurface.Text = propertyDetails.Size.ToString() + "m2";
                //lblPropertyType1.Text = Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType);
                //lblPropertyFor.Text = Dictionary.GetLocalizedValue("PropertyFor", currentCulture, propertyDetails.PropertyFor); ;
                litDetails.Text = String.Concat(@"<table width='100%' cellpadding='0' cellspacing='0' border='0'>", text, "</table>");
                Literal6.Text = Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType) + " " + Dictionary.GetLocalizedValue("PropertyFor", currentCulture, propertyDetails.PropertyFor) + " " +
                     " " + GetLocalResourceObject("in") + " " + lblLocation.Text + ", " + GetAdditionalInfo(propertyDetails.Web_GuideDescription);
                MyTitle = Dictionary.GetLocalizedValue("PRL", currentCulture, propertyDetails.PRL) +
                     "-" +
                      Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType) +
                      " " +
                    Dictionary.GetLocalizedValue("PropertyFor", currentCulture, propertyDetails.PropertyFor) +
                    " " + GetLocalResourceObject("in") + " " +
                    Dictionary.GetLocalizedValue("District", currentCulture, propertyDetails.District) + ", " + lblSurface.Text + ", Sodeco Gestion";

                //lblPropertyType1.Text = lblPrice.Text + " - " + lblSurface.Text + " " + Dictionary.GetLocalizedValue("PropertyType", currentCulture, propertyDetails.PropertyType)
                //    + " " + lblPropertyFor.Text +
                //    " " + GetLocalResourceObject("in") + " " +
                //    lblLocation.Text;
                //lblPropertyFor.Text = "";

                //if (propertyDetails.PropertyFor.ToLower().Contains("sale"))
                //{
                //    ltBuy.Visible = true;
                //    ltRent.Visible = false;
                //}
                //else
                //{
                //    ltRent.Visible = true;
                //    ltBuy.Visible = false;
                //}

                if (!string.IsNullOrEmpty(propertyDetails.Department) && propertyDetails.Department.Contains('#'))
                {
                    lblDepName.Text = propertyDetails.Department.Split('#')[0];
                    ltlDepLink.Text = "<a href=\"tel:" + propertyDetails.Department.Split('#')[1] + "\" style=\"text-decoration:underline; color:inherit;\">" + propertyDetails.Department.Split('#')[1] + "</a>";
                }
            }





            //if (!IsPostBack)
            //{
            //    if (Request.Params["ID"] != null)
            //    {
            //        string prl = Request.Params["ID"];
            //        Property prop = new Property().GetByPRL(prl);
            //        if (prop != null)
            //        {
            //            lblPRL.Text = prop.PRL;
            //            lblSize.Text = prop.Size.ToString() + "m2";
            //            lblDescription.Text = prop.PropertyType + " for " + prop.PropertyFor;
            //            lblPrice.Text = "$" + string.Format("{0:###,###,##0}", prop.SalePrice) + " / $" + string.Format("{0:###,###,##0}", prop.RentPrice);
                        
            //        }
            //    }
            //}
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
    }
}