using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.Resources;
using System.Reflection;
using System.Data;

namespace ASPHTML5.Web.UserControls
{
    public partial class UCPropertySearch : System.Web.UI.UserControl
    {
        #region Properties
        #endregion

        #region Page Event Handlers
    
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                
                object o = Request.ServerVariables["script_name"];
                if(o!=null)
                {
                    if (!o.ToString().ToLower().Contains("index"))
                    {
                        tdDiff.Width = "208";
                        imgDiff.Src = this.GetLocalResourceObject("Image.tabs_sec_left").ToString();
                    }
                    else
                    {
                        tdDiff.Width = "0";
                    }

                }
                LoadPage();



                ddlQadaa.Attributes.Add("onChange", "bindArea();");
                ddlWhere.Attributes.Add("onChange", "bindArea1();");
            }
        }
        #endregion
       
        #region Controls Event Handlers
        protected void btnSerachAll_Click(object sender, ImageClickEventArgs e)
        {
            Search();
        }

        protected void btnSerachByRef_Click(object sender, ImageClickEventArgs e)
        {
            Search();
        }

        protected void imgSavedSearch_Click(object sender, ImageClickEventArgs e)
        {
            MiscActivity.AddSavedSearch(txtEmail.Text, rbList.SelectedValue, ddlWhere.SelectedValue,
                txtFromPrice.Text, txtToPrice.Text, ddlFromBedroom.SelectedValue,
                ddlToBedroom.SelectedValue, ddlPropertyType.SelectedValue);
            Search();
        }

        protected void imgDisplayResults_Click(object sender, ImageClickEventArgs e)
        {
            DataRow row = MiscActivity.GetSavedSearch(txtEmail.Text);
            if (row != null)
            {
                rbList.SelectedValue = row["IWantTo"] != DBNull.Value ? row["IWantTo"].ToString() : "1";
                ddlWhere.SelectedValue = row["Where"] != DBNull.Value ? row["Where"].ToString() : "";
                txtFromPrice.Text = row["FromPriceRange"] != DBNull.Value ? row["FromPriceRange"].ToString() : "";
                txtToPrice.Text = row["ToPriceRange"] != DBNull.Value ? row["ToPriceRange"].ToString() : "";
                ddlFromBedroom.SelectedValue = row["FromBedroomNbr"] != DBNull.Value ? row["FromBedroomNbr"].ToString() : "";
                ddlToBedroom.SelectedValue = row["ToBedroomNbr"] != DBNull.Value ? row["ToBedroomNbr"].ToString() : "";
                ddlPropertyType.SelectedValue = row["PropertyType"] != DBNull.Value ? row["PropertyType"].ToString() : "";
            }
            Search();
        }
        #endregion

        #region Methods
        private void LoadPage()
        {
            string ddlAll = this.GetLocalResourceObject("Text.ddlAll").ToString();
            string ddlAllQadaa = this.GetLocalResourceObject("Text.ddlAllQadaa").ToString();
            string ddlAllDistrict = this.GetLocalResourceObject("Text.ddlAllDistrict").ToString();
            Lookup lkup = new Lookup();
            LoadPropertyType();
            Helpers.Helper.LoadDropDown(ddlWhere, lkup.GetPropertyDisticts(), "Value", "Id", true, ddlAllDistrict);
            Helpers.Helper.LoadDropDown(ddlQadaa, lkup.GetPropertyLocations(), "Value", "Id", true, ddlAllQadaa);

            txtAreas.Text = "";
            foreach (Lookup item in lkup.GetPropertyLocations())
            {
                foreach (Lookup area1 in lkup.GetQadaaDisticts(item.Value.ToString()))
                {
                    txtAreas.Text += item.Value + "," + area1.Value + "#";
                }
            }

            string[] roomNbr = BAL.MiscActivity.GetSettings("BedroomsNbr").ToString().Split(';');
            List<string> roomNbrList = new List<string>(roomNbr.Length);
            roomNbrList.AddRange(roomNbr);
            Helpers.Helper.LoadDropDown(ddlFromBedroom, roomNbrList, "", "", true, ddlAll);
            Helpers.Helper.LoadDropDown(ddlToBedroom, roomNbrList, "", "", true, ddlAll);
            string[] price = BAL.MiscActivity.GetSettings("PriceRange").ToString().Split(';');
            List<string> priceList = new List<string>(price.Length);
            priceList.AddRange(price);
            //Helpers.Helper.LoadDropDown(ddlFromPrice, priceList, "", "", true, ddlAll);
            //Helpers.Helper.LoadDropDown(ddlToPrice, priceList, "", "", true, ddlAll);

            /*string[] priceRent = BAL.MiscActivity.GetSettings("RentPriceRange").ToString().Split(';');
            List<string> priceListRent = new List<string>(priceRent.Length);
            priceListRent.AddRange(priceRent);
            Helpers.Helper.LoadDropDown(ddlFromPriceRent, priceListRent, "", "", true, ddlAll);
            Helpers.Helper.LoadDropDown(ddlToPriceRent, priceListRent, "", "", true, ddlAll);*/

        }

        private void Search()
        {
            string query = "~/SearchResults.aspx";
            if (String.IsNullOrEmpty(txtReference.Text))
            {
                query = String.Concat(query, "?For=#For#&Qadaa=#Qadaa#&Where=#Where#&PriceFrom=#PriceFrom#&PriceTo=#PriceTo#&BdFrom=#BdFrom#&BdTo=#BdTo#&Type=#Type#&SizeFrom=#SizeFrom#&SizeTo=#SizeTo#");
                if (rbList.SelectedValue== "1")
                    query = query.Replace("#For#", "Sale");
                else if (rbList.SelectedValue == "2")
                    query = query.Replace("#For#", "Long");
                else if (rbList.SelectedValue == "3")
                    query = query.Replace("#For#", "Short");
                else if (rbList.SelectedValue == "4")
                    query = query.Replace("#For#", "rent");
                else 
                    query = query.Replace("#For#", "All");
                //query = query.Replace("#Where#", txtarea.Text);
                query = query.Replace("#Where#", ddlWhere.SelectedValue);
                query = query.Replace("#Qadaa#", ddlQadaa.SelectedValue);

                //query = query.Replace("#PriceFrom#", txtFromPrice.Text);
                //query = query.Replace("#PriceTo#", txtToPrice.Text);
                query = query.Replace("#BdFrom#", ddlFromBedroom.SelectedValue);
                query = query.Replace("#BdTo#", ddlToBedroom.SelectedValue);
                query = query.Replace("#Type#", ddlPropertyType.SelectedValue);
                int temp;
                if (int.TryParse(txtFromSize.Text.Replace(",",""), out temp))
                {
                    query = query.Replace("#SizeFrom#", temp.ToString());
                }
                else
                {
                    query = query.Replace("#SizeFrom#", int.MinValue.ToString());
                }
                if (int.TryParse(txtToSize.Text.Replace(",", ""), out temp))
                {
                    query = query.Replace("#SizeTo#", temp.ToString());
                }
                else
                {
                    query = query.Replace("#SizeTo#", int.MaxValue.ToString());
                }
                if (int.TryParse(txtFromPrice.Text.Replace(",", ""), out temp))
                {
                    query = query.Replace("#PriceFrom#", temp.ToString());
                }
                else
                {
                    query = query.Replace("#PriceFrom#", int.MinValue.ToString());
                }
                if (int.TryParse(txtToPrice.Text.Replace(",", ""), out temp))
                {
                    query = query.Replace("#PriceTo#", temp.ToString());
                }
                else
                {
                    query = query.Replace("#PriceTo#", int.MaxValue.ToString());
                }
            }
            else
            {
                query = String.Concat(query, "?PRL=#PRL#");
                query = query.Replace("#PRL#", txtReference.Text);
            }
            Response.Redirect(query);
        }

        private void LoadPropertyType()
        {
            string ddlAll = this.GetLocalResourceObject("Text.ddlAll").ToString();
            Dictionary dict = new Dictionary();
            dict.Id = "PropertyType";
            DictionaryCollection col = dict.GetByKey();
            string textvalue = "";
            string currentCulture = Convert.ToString(Session["MyCulture"]);
            if (String.IsNullOrEmpty(currentCulture))
                textvalue = "English";
            switch (currentCulture)
            {
                case "en-US":
                    textvalue = "English";
                    break;
                case "ar-LB":
                    textvalue = "Arabic";
                    break;
                case "fr-FR":
                    textvalue = "French";
                    break;
            }
            Helpers.Helper.LoadDropDown(ddlPropertyType, col, textvalue, "English", true, ddlAll);
        }

        #endregion

        protected void rbList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ddlAll = this.GetLocalResourceObject("Text.ddlAll").ToString();
            string selectedValue = rbList.SelectedValue;
            if (selectedValue == "2")
            {
                string[] price = BAL.MiscActivity.GetSettings("RentPriceRange").ToString().Split(';');
                List<string> priceList = new List<string>(price.Length);
                priceList.AddRange(price);
                //Helpers.Helper.LoadDropDown(ddlFromPrice, priceList, "", "", true, ddlAll);
                //Helpers.Helper.LoadDropDown(ddlToPrice, priceList, "", "", true, ddlAll);
            }
            else
            {
                string[] price = BAL.MiscActivity.GetSettings("PriceRange").ToString().Split(';');
                List<string> priceList = new List<string>(price.Length);
                priceList.AddRange(price);
                //Helpers.Helper.LoadDropDown(ddlFromPrice, priceList, "", "", true, ddlAll);
                //Helpers.Helper.LoadDropDown(ddlToPrice, priceList, "", "", true, ddlAll);
            }
        }

 
    }
}