using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using ASPHTML5.BAL;
using System.Configuration;

namespace ASPHTML5.Web
{
    public partial class FeedbackForm : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string prl = Request.Params["PRL"];
                if (String.IsNullOrEmpty(prl))
                {
                    litFormTitle.Text = this.GetLocalResourceObject("Text.FormTitleFeedback").ToString();
                    litFormContent2.Text = this.GetLocalResourceObject("Text.Content2Feedback").ToString();
                    litFromContent1.Text = this.GetLocalResourceObject("Text.Content1Feedback").ToString();
                }
                else
                {
                    litFormTitle.Text = this.GetLocalResourceObject("Text.FormTitleView").ToString();
                    litFormContent2.Text = this.GetLocalResourceObject("Text.Content2View").ToString();
                    litFromContent1.Text = this.GetLocalResourceObject("Text.Content1View").ToString();
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
                    StringBuilder builder = new StringBuilder(EmailTemplates.FeedbackEmail);
                    builder = builder.Replace("#Title#", ddlTitle.Value);
                    builder = builder.Replace("#FirstName#", txtFirstName.Value);
                    builder = builder.Replace("#SurName#", txtLastName.Value);
                    builder = builder.Replace("#Phone#", txtPhone.Value);
                    builder = builder.Replace("#Email#", txtEmail.Value);
                    builder = builder.Replace("#Q1#", rbQ1.SelectedValue);
                    builder = builder.Replace("#Q2#", rbQ2.SelectedValue);
                    builder = builder.Replace("#Q3#", rbQ3.SelectedValue);
                    builder = builder.Replace("#Q4#", rbQ4.SelectedValue);
                    builder = builder.Replace("#Q5#", rbQ5.SelectedValue);
                    builder = builder.Replace("#Q6#", rbQ6.SelectedValue);
                    builder = builder.Replace("#OpenQ1#", txtOpenQ1.Value);
                    builder = builder.Replace("#OpenQ2#", rbOpenQ2.SelectedValue);
                    builder = builder.Replace("#OpenQ3#", rbOpenQ3.SelectedValue);
                    builder = builder.Replace("#OpenQ4#", txtOpenQ4.Value);
                    string emailSubject = "";
                    string prl = Request.Params["PRL"];
                    if (String.IsNullOrEmpty(prl))
                        emailSubject = "Feedback Form Submitted By '";
                    else
                        emailSubject = "View the Property (PRL:" + prl + ") Form Submitted By";
                    BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat(emailSubject, txtFirstName.Value, " ", txtLastName.Value, "'"), builder.ToString());
                    //divMain.Visible = false;
                    //divSecondary.Visible = true;
                    //litMessage.Text = this.GetLocalResourceObject("Text.EmailSubmitted").ToString();
                }
                catch (Exception ex)
                {
                    Session["FeedbackForm_thankyou"] = ex.ToString();
                    Response.Redirect("~/FeedbackForm-ThankYou.aspx");
                    //divMain.Visible = false;
                    //divSecondary.Visible = true;
                    //litMessage.Text = this.GetLocalResourceObject("Text.ErrorOccurred").ToString() + Environment.NewLine + ex.ToString();
                }
                Response.Redirect("~/FeedbackForm-ThankYou.aspx");
            }
            else
            {               
            }
        }
    }
}
