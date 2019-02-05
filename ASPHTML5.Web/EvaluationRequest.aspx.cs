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
    public partial class EvaluationRequest : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string query = Request.Params["Id"];
                if (string.IsNullOrEmpty(query))
                {

                    var context = loadContextWithRouteData();

                    if (context.Items["action"] != null)
                    {
                        query = context.Items["action"].ToString().ToLower();
                    }
                    else
                    {
                        query = "eval";
                    }
                }
                ltrAboutYourProperty.Text = this.GetLocalResourceObject("Text.AboutYourProperty" + query).ToString();
                litFormHeader.Text = this.GetLocalResourceObject("Text.FormTitle" + query).ToString();
                litContent1.Text = this.GetLocalResourceObject("Text.Content1" + query).ToString();
                litContent2.Text = this.GetLocalResourceObject("Text.Content2" + query).ToString();
                litValueFor.Text = this.GetLocalResourceObject("Text.ValueFor" + query).ToString();
                litBuy.Text = this.GetLocalResourceObject("Text.Buy" + query).ToString();
                litRent.Text = this.GetLocalResourceObject("Text.Rent" + query).ToString();
                if (query.ToLower() != "advise")
                {
                    rbSell.Visible = false;
                    litSell.Visible = false;
                }
                else
                {
                    rbSell.Visible = true;
                    litSell.Visible = true;
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
                    StringBuilder builder = new StringBuilder(EmailTemplates.EvaluationRequestEmail2);
                    //builder = builder.Replace("#Title#", ddlTitle.Value);
                    builder = builder.Replace("#FirstName#", txtFirstName.Value);
                    //builder = builder.Replace("#SurName#", txtLastName.Value);
                    builder = builder.Replace("#Phone#", txtPhone.Value);
                    builder = builder.Replace("#Email#", txtEmail.Value);
                    builder = builder.Replace("#Condition#", rbBuy.Value == "1" ? "For Sale" : "For Rent");
                    builder = builder.Replace("#Address#", String.Concat(txtAddress1.Value)); //, ", ", txtAddress2.Value
                    //builder = builder.Replace("#City#", txtCity.Value);
                    builder = builder.Replace("#PropertyDetails#", txtPropertyDetails.Value);
                    string emailSubject = "";
                    string query = Request.Params["Id"];
                    if (string.IsNullOrEmpty(query))
                    {
                        var context = loadContextWithRouteData();
                        if (context.Items["action"] != null)
                        {
                            query = context.Items["action"].ToString().ToLower();
                        }
                        else
                        {
                            query = "eval";
                        }
                    }

                    switch (query.ToLower())
                    {
                        case "eval":
                            emailSubject = "Evaluation Request Form Submitted By '";
                            break;
                        case "advise":
                            emailSubject = "Advisory Request Form Submitted By '";
                            break;
                        case "manage":
                            emailSubject = "Manage your Property Form Submitted By '";
                            break;
                    }

                    if (fileUploader.HasFile)
                    {
                        BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat(emailSubject, txtFirstName.Value, "'"), builder.ToString(), fileUploader.FileName, fileUploader.FileContent);
                    }
                    else
                    {
                        BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat(emailSubject, txtFirstName.Value, "'"), builder.ToString());
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
