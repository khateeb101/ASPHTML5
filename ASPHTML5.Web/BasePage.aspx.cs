using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Globalization;
using System.Web.Routing;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;

namespace ASPHTML5.Web
{
    public partial class BasePage : System.Web.UI.Page
    {

        public string MyTitle { get; set; }

        #region Page Event Handlers

        public string CurrentCulture
        {
            get
            {
                return Thread.CurrentThread.CurrentUICulture.TwoLetterISOLanguageName;
            }
        }
       
        protected HttpContextWrapper loadContextWithRouteData()
        {
            var context = new HttpContextWrapper(System.Web.HttpContext.Current);
            var routeData = RouteTable.Routes.GetRouteData(context);
            if (routeData != null && routeData.Values != null)
            {
                foreach (var urlParm in routeData.Values)
                {
                    context.Items[urlParm.Key] = urlParm.Value;
                }
            }

            RouteTable.Routes.GetRouteData(context);
            return context;
        }




        protected override void InitializeCulture()
        {
            string currentCulture = Convert.ToString(Session["MyCulture"]);
            //if (String.IsNullOrEmpty(currentCulture))
            {
                HttpContextWrapper context = loadContextWithRouteData();

                if (context.Items["locale"] != null)
                {
                    currentCulture = context.Items["locale"].ToString();
                    if (ParseCulture(currentCulture) != "")
                        Session["MyCulture"] = ParseCulture(currentCulture);
                }
                else
                {
                    if (String.IsNullOrEmpty(currentCulture))
                    {
                        currentCulture = "en-US";
                        Session["MyCulture"] = currentCulture;
                    }
                }


            }

            if (Session["MyCulture"] != null)
            {
                string cult = Session["MyCulture"].ToString().ToLower();
                if (cult == "ar")
                {
                    cult = "ar-EG";
                }
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(cult);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(cult);
            }
            base.InitializeCulture();
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (ViewState["url"] != null && form1 != null)
            {
                form1.Action = ViewState["url"].ToString();
            }
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(MyTitle))
                {
                    Page.Title = MyTitle;
                }
            }


        }





        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpContext context = HttpContext.Current;

                ViewState["url"] = context.Request.RawUrl;
            }
        }


        protected void Page_PreInit(object sender, EventArgs e)
        {
            string theme = "";
            string currentCulture = Convert.ToString(Session["MyCulture"]);
            if (String.IsNullOrEmpty(currentCulture))
                theme = "English";
            switch (currentCulture)
            {
                case "en-US":
                    theme = "English";
                    break;
                case "ar-LB":
                    theme = "Arabic";
                    break;
                case "fr-FR":
                    theme = "French";
                    break;
                case "en":
                    theme = "English";
                    break;
                case "ar":
                    theme = "Arabic";
                    break;
                case "fr":
                    theme = "French";
                    break;
            }
            this.Page.Theme = theme;
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


        internal string ParseCulture(string culture)
        {
            string retVal = "";


            switch (culture)
            {
                case "en-US":
                    retVal = "en-US";
                    break;
                case "ar-LB":
                    retVal = "ar-LB";
                    break;
                case "fr-FR":
                    retVal = "fr-FR";
                    break;
                case "en":
                    retVal = "en-US";
                    break;
                case "ar":
                    retVal = "ar-LB";
                    break;
                case "fr":
                    retVal = "fr-FR";
                    break;
            }
            return retVal;
        }
        #endregion
    }
}
