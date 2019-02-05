using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.Text;
using System.IO;

namespace ASPHTML5.Web.UserControls
{
    public partial class UCMap : System.Web.UI.UserControl
    {
        protected string BannerName
        {
            get
            {
                return GetLocalResourceObject("Image.Map").ToString();
            }
        }

        protected string BannerNameW
        {
            get
            {
                return GetLocalResourceObject("Image.Map").ToString().Replace(".swf", "");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BAL.Newsletter n = BAL.Newsletter.SelectShowOnWebsiteNewsletter();
            if (n != null)
            {
                imgNewsletter.ImageUrl = "~/ImageViewer.aspx?newsletterid=" + n.id;
                string currentCulture = Convert.ToString(Session["MyCulture"]);
                if (String.IsNullOrEmpty(currentCulture))
                    ltrTitle.Text = n.Name;
                switch (currentCulture)
                {
                    case "en-US":
                        ltrTitle.Text = n.Name;
                        break;
                    case "ar-LB":
                        ltrTitle.Text = n.Name_ar;
                        break;
                    case "fr-FR":
                        ltrTitle.Text = n.Name_fr;
                        break;
                }
                if (n.PDF != null)
                {
                    lnkNewsletterImage.NavigateUrl = lnkNewsletterTitle.NavigateUrl = "~/DocumentViewer.aspx?id=" + n.id;
                }
            }
        }

        #region Controls Event Handlers
        protected void imgSbscribe_Click(object sender, ImageClickEventArgs e)
        {
            bool isHuman = SampleCaptcha.Validate(CaptchaCodeTextBox.Text);

            CaptchaCodeTextBox.Text = null;


            if (isHuman)
            {
                try
                {
                    MiscActivity.NewsletterSubscribtionActivate(txtEmail.Value);
                    //StringBuilder builder = new StringBuilder(EmailTemplates.NewsletterSubscribe);
                    //builder = builder.Replace("#SubscribtionLink#", BAL.Common.GetSettings("Domain") + "NewsletterUnSubscribe.aspx?Email=" + txtEmail.Value);
                    //BAL.Common.SendEmail(new string[] { BAL.Common.GetSettings("EmailFrom") }, null, "Sodeco Gestion Newsletter Subscribtion", builder.ToString());
                    //ScriptManager.RegisterClientScriptBlock(imgSbscribe, typeof(Page), "imgSbscribe", "<script language='javascript'>alert('" + this.GetLocalResourceObject("Text.EmailSubscribe") + "');</script>", false);
                }
                catch { }
            }
            else
            {

            }
        }

        protected void imgUnsubscribe_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                MiscActivity.NewsletterSubscribtionActivate(txtEmail.Value);
            }
            catch { }
        }
        #endregion
    }
}