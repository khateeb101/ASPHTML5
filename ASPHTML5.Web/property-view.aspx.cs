using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class property_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgSubmit_Click(object sender, ImageClickEventArgs e)
        {
            // bool isHuman = SampleCaptcha.Validate(CaptchaCodeTextBox.Text);

            //CaptchaCodeTextBox.Text = null;
            bool isHuman = true;

            if (isHuman)
            {
                try
                {
                    string emailSubject = "";
                    string prl = Request.Params["PRL"];
                    StringBuilder builder = new StringBuilder();
                    if (!String.IsNullOrEmpty(prl))
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
                    //divMain.Visible = false;
                    //divSecondary.Visible = true;
                    //litMessage.Text = this.GetLocalResourceObject("Text.EmailSubmitted").ToString();
                }
                catch (Exception ex)
                {
                    Session["Feedback_ThankYou"] = ex.ToString();
                    Response.Redirect("~/Feedback-ThankYou.aspx");
                    //divMain.Visible = false;
                    //divSecondary.Visible = true;
                    //litMessage.Text = this.GetLocalResourceObject("Text.ErrorOccurred").ToString() + Environment.NewLine + ex.ToString();
                }
                Response.Redirect("~/Feedback-ThankYou.aspx");
            }
            else
            {

            }
        }
    }
}