using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ASPHTML5.BAL;
using System.Text.RegularExpressions;
using System.Net;
using System.Web.Security;

namespace ASPHTML5.Web
{
    public partial class Common : System.Web.UI.MasterPage
    {

        #region Variables
        #endregion

        #region Properties
        public string CurrentCultureString
        {
            get
            {
                return ((BasePage)(this.Page)).CurrentCulture;
            }

        }
        #endregion

        #region Page Event Handlers
        protected void Page_PreRender(object sender, EventArgs e)
        {
            hplHotProps.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/real-estate-hotproperties";
            //hplSearchHotProps.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/real-estate-hotproperties";

            //aboutus.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/About/sale-rent-property-marketing-Lebanon";

            profile.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture +"/Profile";
            //feedback_form.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/FeedbackForm";
            //contact_form.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/ContactUs";
            //contact_form2.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/ContactUs";
            
            investments.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/Investments";
            job_openings.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/JobOpportunity";
            help.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/SiteMap";
            terms_conditions.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/TermsAndConditions";
            sodeco_gestion.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/ASPHTML5";
            index.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/Index";
            home.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/Index";


            evalEval.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/EvaluationRequest/Eval";
            evalManage.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/EvaluationRequest/Manage";
            evalAdvise.HRef = ResolveUrl("~/") + ((BasePage)Page).CurrentCulture + "/EvaluationRequest/Advise";


            //if (!IsPostBack)
            //{
            //    HttpContext context = HttpContext.Current;
            //    if (context.Request["lang"] == null)
            //    {
            //        Session["MyCulture"] = Session["MyCulture"];
            //    }
            //    else
            //    {
            //        Session["MyCulture"] = context.Request["lang"].ToString();
            //    }
            //}
        }

        #endregion

        #region Controls Event Handlers
        protected void lnkLanguage_Click(object sender, CommandEventArgs e)
        {
            Session["MyCulture"] = e.CommandArgument;
            var context = new HttpContextWrapper(System.Web.HttpContext.Current);
            if (context.Items["locale"] != null)
            {
                Response.Redirect(Request.RawUrl.Replace("/" + context.Items["locale"].ToString() + "/",  "/" + Session["MyCulture"].ToString() + "/"));
            }
            else
            {
                Response.Redirect(Request.RawUrl);
            }

        }
        #endregion

        #region Methods
        #endregion


       
        public string ToFriendlyUrl(string Str)
        {
            
            
            return Str.Replace("_", "-").Replace("/", "-").Replace(" ", "-").Replace("\"", "").Replace("&", "").Replace("?", "").Replace("&", "");
        }

        protected string GetLocalizedString(object dataItem, string key)
        {
            string retVal = "";
            DataRowView dataRowView = (DataRowView)dataItem;
            string value = dataRowView.Row[key] as string;
            retVal = Dictionary.GetLocalizedValue(key, this.GetCurrentCulture(), value);
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["state"] != null && Request["error"] == null)
            {
                FacebookLogin();
            }
        }

        protected void btnFacebook_Click(object sender, ImageClickEventArgs e)
        {
            string returnURL = Request.Url.OriginalString;
            if (Request.Url.Query != string.Empty)
                returnURL = returnURL.Replace(Request.Url.Query, "");
            Response.Redirect("https://www.facebook.com/dialog/oauth?client_id=" + appId + "&redirect_uri=" + returnURL + "&scope=email,read_friendlists&state=" + Guid.NewGuid());
        }

        string appId = "253260901452322";

        private void FacebookLogin()
        {

            string cookieValue, accessToken, uid, url, userInformation, email, first_name, last_name, id = null;
            Regex getValues;
            Match infoMatch;
            MatchCollection valuesCollection;
            WebClient client;

            try
            {
                string returnURL = Request.Url.OriginalString;
                if (Request.Url.Query != string.Empty)
                    returnURL = returnURL.Replace(Request.Url.Query, "");

                url = "https://graph.facebook.com/oauth/access_token?" +
                       "client_id=" + appId +
                       "&redirect_uri=" + returnURL +
                       "&client_secret=79d0a2ef84ae5d0c161e7a1e812a7a57" +
                       "&code=" + Request["code"];
                client = new WebClient();
                string userCode = client.DownloadString(url);



                int BeginingOfAccessToken = userCode.IndexOf("access_token=") + 13;

                int indexofExpires = userCode.LastIndexOf("&expires=");

                //Get access token
                string token = userCode.Substring(BeginingOfAccessToken, indexofExpires - BeginingOfAccessToken);// userCode.IndexOf("&", BeginingOfAccessToken) - BeginingOfAccessToken);

                string InfoUrl = "https://graph.facebook.com/me?access_token=" + token;

                userInformation = client.DownloadString(InfoUrl);

                // Get the email address  
                getValues = new Regex("(?<=\"email\":\")(.+?)(?=\")");
                infoMatch = getValues.Match(userInformation);
                email = infoMatch.Value.Replace("\\u0040", "@");

                // Get the first_name
                getValues = new Regex("(?<=\"first_name\":\")(.+?)(?=\")");
                infoMatch = getValues.Match(userInformation);
                first_name = infoMatch.Value;

                // Get the first_name
                getValues = new Regex("(?<=\"last_name\":\")(.+?)(?=\")");
                infoMatch = getValues.Match(userInformation);
                last_name = infoMatch.Value;

                getValues = new Regex("(?<=\"id\":\")(.+?)(?=\")");
                infoMatch = getValues.Match(userInformation);
                id = infoMatch.Value;

                MembershipCreateStatus createStatus;
                MembershipUser member = System.Web.Security.Membership.CreateUser(email, id, email, "question", "answer", true, out createStatus);

                switch (createStatus)
                {
                    case MembershipCreateStatus.Success:
                        //User user = new BLL.User() { Email = email, FirstName = first_name, LastName = last_name, UserName = email, Telephone = "" };
                        //user.Save();
                        FormsAuthentication.SignOut();
                        if (System.Web.Security.Membership.GetUser(email) != null)
                        {
                            FormsAuthentication.RedirectFromLoginPage(email, false);
                            Response.Redirect("~/Common/Main-Page.aspx");
                        }
                        break;
                    case MembershipCreateStatus.DuplicateUserName:
                        FormsAuthentication.SignOut();
                        if (System.Web.Security.Membership.GetUser(email) != null)
                        {
                            FormsAuthentication.RedirectFromLoginPage(email, false);
                            Response.Redirect("~/Common/Main-Page.aspx");
                        }
                        break;
                    case MembershipCreateStatus.DuplicateEmail:
                        break;
                    case MembershipCreateStatus.InvalidEmail:
                        break;
                    case MembershipCreateStatus.InvalidAnswer:
                        break;
                    case MembershipCreateStatus.InvalidPassword:
                        break;
                    default:

                        break;
                }
            }
            catch (Exception ex) { }
        }
    }
}
