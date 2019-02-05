using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.Configuration;
using System.Text;

namespace ASPHTML5.Web.Mobile
{
    public partial class Feedback : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string prl = Request.Params["PRL"];
                if (String.IsNullOrEmpty(prl))
                {
                    //litFormTitle.Text = this.GetLocalResourceObject("Text.FormTitleFeedback").ToString();
                    //litFormContent2.Text = this.GetLocalResourceObject("Text.Content2Feedback").ToString();
                    //litFromContent1.Text = this.GetLocalResourceObject("Text.Content1Feedback").ToString();
                    //litHeaderConetnt.Text = this.GetLocalResourceObject("Text.HeaderContentFeedback").ToString();
                    //litHeaderText.Text = this.GetLocalResourceObject("Text.HeaderTitleFeedback").ToString(); 
                }
                else
                {
                    //litFormTitle.Text = this.GetLocalResourceObject("Text.FormTitleView").ToString();
                    //litFormContent2.Text = this.GetLocalResourceObject("Text.Content2View").ToString();
                    //litFromContent1.Text = this.GetLocalResourceObject("Text.Content1View").ToString();
                    //litHeaderConetnt.Text = this.GetLocalResourceObject("Text.HeaderContentView").ToString();
                    //litHeaderText.Text = this.GetLocalResourceObject("Text.HeaderTitleView").ToString();
                }
            }
        }

        protected void imgSubmit_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                string emailSubject = "";
                string prl = Request.Params["PRL"];
                StringBuilder builder = new StringBuilder();
                if (String.IsNullOrEmpty(prl))
                {
                    builder = new StringBuilder(EmailTemplates.ContactUsEmail);
                    builder = builder.Replace("#Title#", ddlTitle.Value);
                    builder = builder.Replace("#FirstName#", txtFirstName.Value);
                    builder = builder.Replace("#SurName#", txtLastName.Value);
                    builder = builder.Replace("#Phone#", txtPhone.Value);
                    builder = builder.Replace("#Email#", txtEmail.Value);
                    builder = builder.Replace("#PropertyDetails#", txtPropertyDetails.Value);


                    emailSubject = "Feedback Form Submitted By '";
                }
                else
                {
                    builder = new StringBuilder(EmailTemplates.ContactUsEmailSodeco);
                    Property propertyDetails = new Property().GetByPRL(prl);
                    string price = propertyDetails.PropertyFor.ToLower().Contains("rent") ? string.Format("{0:###,###,##0}", propertyDetails.RentPrice) + "$" : string.Format("{0:###,###,##0}", propertyDetails.SalePrice) + "$";
                    if (propertyDetails.PropertyFor.ToLower().Contains("rent") && propertyDetails.PropertyFor.ToLower().Contains("sale"))
                    {
                        price = string.Format("{0:###,###,##0}", propertyDetails.SalePrice) + " / " + string.Format("{0:###,###,##0}", propertyDetails.RentPrice) + "$";
                    }
                    string[] allValues = propertyDetails.Web_GuideDescription.Split(new string[] { "-----" }, StringSplitOptions.None);
                    string desc = string.Empty;
                    if (allValues.Length > 0)
                    {
                        desc = allValues[0];
                    }
                    builder = builder.Replace("#prl#", prl);
                    builder = builder.Replace("#type#", propertyDetails.PropertyType);
                    builder = builder.Replace("#district#", propertyDetails.District);
                    builder = builder.Replace("#surface#", propertyDetails.Size.ToString());
                    builder = builder.Replace("#propertyfor#", propertyDetails.PropertyFor);
                    builder = builder.Replace("#price#", price);
                    builder = builder.Replace("#description#", desc);

                    builder = builder.Replace("#name#", txtFirstName.Value + " " + txtLastName.Value);
                    builder = builder.Replace("#email#", txtEmail.Value);
                    builder = builder.Replace("#phone#", txtPhone.Value);
                    builder = builder.Replace("#comments#", txtPropertyDetails.Value);

                    emailSubject = "View the Property (PRL:" + prl + ") Form Submitted By ";
                }
                BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat(emailSubject, "'", txtFirstName.Value, " ", txtLastName.Value, "'"), builder.ToString());
                divMain.Visible = false;
                divSecondary.Visible = true;
                litMessage.Text = this.GetLocalResourceObject("Text.EmailSubmitted").ToString();
            }
            catch (Exception ex)
            {
                divMain.Visible = false;
                divSecondary.Visible = true;
                litMessage.Text = this.GetLocalResourceObject("Text.ErrorOccurred").ToString() + Environment.NewLine + ex.ToString();
            }
        }
    }
}