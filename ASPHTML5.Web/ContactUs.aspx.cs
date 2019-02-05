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
    public partial class ContactUs : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SampleCaptcha.CodeLength = 3;
            }

        }

        protected void imgSubmit_Click(object sender, ImageClickEventArgs e)
        {

            bool isHuman = SampleCaptcha.Validate(CaptchaCodeTextBox.Text);

            CaptchaCodeTextBox.Text = null;


            if (isHuman)
            {
                try
                {
                    StringBuilder builder = new StringBuilder(EmailTemplates.ContactUsEmail2);
                    // builder = builder.Replace("#Title#", ddlTitle.Value);
                    builder = builder.Replace("#FirstName#", txtFirstName.Value);
                    // builder = builder.Replace("#SurName#", txtLastName.Value);
                    builder = builder.Replace("#Phone#", txtPhone.Value);
                    builder = builder.Replace("#Email#", txtEmail.Value);
                    builder = builder.Replace("#Condition#", GenerateCondition());
                    builder = builder.Replace("#Address#", String.Concat(txtAddress1.Value)); //, ", ", txtAddress2.Value
                    //builder = builder.Replace("#City#", txtCity.Value);
                    builder = builder.Replace("#PropertyDetails#", txtPropertyDetails.Value);

                    if (fileUploader.HasFile)
                    {
                        BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat("Contact Us Form Submitted By '", txtFirstName.Value, "'"), builder.ToString(), fileUploader.FileName, fileUploader.FileContent);
                    }
                    else
                    {
                        BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat("Contact Us Form Submitted By '", txtFirstName.Value, "'"), builder.ToString());
                    }
                    Session["contact_thankyou"] = null;
                }
                catch (Exception ex)
                {
                    Session["contact_thankyou"] = ex.ToString();
                    //divMain.Visible = false;
                    //divSecondary.Visible = true;
                    //litMessage.Text = this.GetLocalResourceObject("Text.ErrorOccurred").ToString() + Environment.NewLine + ex.ToString();
                }
                Response.Redirect("~/ContactUs-ThankYou.aspx", true);
                //divMain.Visible = false;
                //divSecondary.Visible = true;
                //litMessage.Text = this.GetLocalResourceObject("Text.EmailSubmitted").ToString();
            }
            else
            {
                litMessage.Text = "Invalid Captcha!";
            }

        }

        private string GenerateCondition()
        {
            string retVal = "";
            foreach (ListItem item in chbFor.Items)
            {
                if (item.Selected)
                    retVal = String.Concat(retVal, item.Value, " - ");
            }
            foreach (ListItem item in chbAmentities.Items)
            {
                if (item.Selected)
                    retVal = String.Concat(retVal, item.Value, " - ");
            }
            foreach (ListItem item in chbType.Items)
            {
                if (item.Selected)
                    retVal = String.Concat(retVal, item.Value, " - ");
            }
            foreach (ListItem item in chbType2.Items)
            {
                if (item.Selected)
                    retVal = String.Concat(retVal, item.Value, " - ");
            }
            return retVal.TrimEnd('-');
        }
    }
}
