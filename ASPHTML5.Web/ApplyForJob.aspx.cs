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
    public partial class ApplyForJob : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SampleCaptcha.CodeLength = 3;
                Job job = new Job();
                job.Id = new Guid(Request.Params["Id"]);
                job = job.GetById();

                if (Session["MyCulture"] != null)
                {
                    if (Session["MyCulture"].ToString().ToLower() == "ar-lb")
                    {
                        litTitle.Text = job.ArabicTitle;
                        litDescription.Text = job.ArabicDescription;
                    }
                    else if (Session["MyCulture"].ToString().ToLower() == "fr-fr")
                    {
                        litTitle.Text = job.FrenchTitle;
                        litDescription.Text = job.FrenchDescription;
                    }
                    else
                    {
                        litTitle.Text = job.Title;
                        litDescription.Text = job.Description;
                    }
                }
                else
                {
                    litTitle.Text = job.Title;
                    litDescription.Text = job.Description;
                }
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
                    JobCandidate can = new JobCandidate();
                    can.JobId = new Guid(Request.Params["Id"]);
                    can.FirstName = txtFirstName.Value;
                    can.LastName = txtLastName.Value;
                    can.Phone = txtPhone.Value;
                    can.Email = txtEmail.Value;
                    can.Comments = txtPropertyDetails.Value;
                    can.CV = resumeUpload.HasFile ? resumeUpload.FileBytes : null;
                    can.CVName = resumeUpload.HasFile ? resumeUpload.FileName : "";
                    can.AddJobCandidate();
                    StringBuilder builder = new StringBuilder(EmailTemplates.SendCVSubmittedNotificationEmail);
                    builder = builder.Replace("#FirstName#", txtFirstName.Value);
                    builder = builder.Replace("#SurName#", txtLastName.Value);
                    builder = builder.Replace("#Phone#", txtPhone.Value);
                    builder = builder.Replace("#Email#", txtEmail.Value);
                    builder = builder.Replace("#Comments#", txtPropertyDetails.Value);
                    if (resumeUpload.HasFile)
                    {
                        BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat("Apply For Job Form Submitted By '", txtFirstName.Value, " ", txtLastName.Value, "'"), builder.ToString(), resumeUpload.FileName, resumeUpload.FileContent);
                    }
                    else
                    {
                        BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat("Apply For Job Form Submitted By '", txtFirstName.Value, " ", txtLastName.Value, "'"), builder.ToString());
                    }
                    
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
            else
            {
                litMessage.Text = "Invalid Captcha!";
            }
        }
    }
}