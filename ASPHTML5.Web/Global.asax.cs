using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;


namespace ASPHTML5.Web
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        void RegisterRoutes(RouteCollection routes)
        {
          

            routes.RouteExistingFiles = false;
           
            routes.MapPageRoute(
             "PropsEn",
             "{locale}/{PRL}/{*desc}",
             "~/PropertyDetails.aspx", false, new RouteValueDictionary { }, new RouteValueDictionary { { "PRL", @"\d{8}" } }
            );

            routes.MapPageRoute(
                "Props",
                "{PRL}/*",
                "~/PropertyDetails.aspx", false, new RouteValueDictionary { }, new RouteValueDictionary { { "PRL", @"\d{8}" } }
            );

            routes.MapPageRoute(
                "AboutRouteEn",
                "{locale}/About/{*seo}",
                "~/AboutUs.aspx"
            );

            routes.MapPageRoute(
                            "AboutRouteFR",
                            "fr/qui-sommes-nous",
                            "~/AboutUs.aspx"
                        );

            routes.MapPageRoute(
                "AboutRoute",
                "About",
                "~/AboutUs.aspx"
            );

            routes.MapPageRoute(
                "ApplyForJobEn",
                "{locale}/ApplyForJob",
                "~/ApplyForJob.aspx"
            );

            routes.MapPageRoute(
                "ApplyForJob",
                "ApplyForJob",
                "~/ApplyForJob.aspx"
            );

            routes.MapPageRoute(
               "real-estate-hotpropertiesEn",
               "{locale}/real-estate-hotproperties",
               "~/SearchResults.aspx?hot=1"
           );

            routes.MapPageRoute(
                "real-estate-hotproperties",
                "real-estate-hotproperties",
                "~/SearchResults.aspx?hot=1"
            );

            routes.MapPageRoute(
                "ContactUsEn",
                "{locale}/ContactUs",
                "~/ContactUs.aspx"
            );

            routes.MapPageRoute(
                "ContactUsFr",
                "fr/contacter-notre-agence-immobilière",
                "~/ContactUs.aspx"
            );

            routes.MapPageRoute(
                "ContactUs",
                "ContactUs",
                "~/ContactUs.aspx"
            );

            routes.MapPageRoute(
               "ProfileEn",
               "{locale}/Profile",
               "~/Profile.aspx"
           );

            routes.MapPageRoute(
                "Profile",
                "Profile",
                "~/Profile.aspx"
            );

            routes.MapPageRoute(
                "FeedbackFormEn",
                "{locale}/FeedbackForm",
                "~/FeedbackForm.aspx"
            );

            routes.MapPageRoute(
                "FeedbackFormfr",
                "{locale}/votre-avis",
                "~/FeedbackForm.aspx"
            );

            routes.MapPageRoute(
                "FeedbackForm",
                "FeedbackForm",
                "~/FeedbackForm.aspx"
            );


            routes.MapPageRoute(
                "InvestmentsEn",
                "{locale}/Investments",
                "~/Investments.aspx"
            );

            routes.MapPageRoute(
                "Investments",
                "Investments",
                "~/Investments.aspx"
            );

            routes.MapPageRoute(
                "JobOpportunityEn",
                "{locale}/JobOpportunity",
                "~/JobOpportunity.aspx"
            );

            routes.MapPageRoute(
                "JobOpportunity",
                "JobOpportunity",
                "~/JobOpportunity.aspx"
            );

            routes.MapPageRoute(
                "SiteMapEn",
                "{locale}/SiteMap",
                "~/SiteMap.aspx"
            );

            routes.MapPageRoute(
                "SiteMap",
                "SiteMap",
                "~/SiteMap.aspx"
            );

            routes.MapPageRoute(
                "TermsAndConditionsEn",
                "{locale}/TermsAndConditions",
                "~/TermsAndConditions.aspx"
            );

            routes.MapPageRoute(
                "TermsAndConditions",
                "TermsAndConditions",
                "~/TermsAndConditions.aspx"
            );

            routes.MapPageRoute(
                "ASPHTML5En",
                "{locale}/ASPHTML5",
                "~/ASPHTML5.aspx"
            );

            routes.MapPageRoute(
                "ASPHTML5",
                "ASPHTML5",
                "~/ASPHTML5.aspx"
            );

            routes.MapPageRoute(
               "IndexEn",
               "{locale}/Index",
               "~/Index.aspx"
           );

            routes.MapPageRoute(
                "Index",
                "Index",
                "~/Index.aspx"
            );

            routes.MapPageRoute(
              "DefaultEn",
              "{locale}/Default",
              "~/Default.aspx"
            );

            routes.MapPageRoute(
                "Default",
                "Default",
                "~/Default.aspx"
            );

            routes.MapPageRoute(
               "BuyEn",
               HttpContext.GetGlobalResourceObject("Links", "Buy").ToString().TrimStart('/'),
               "~/Buy.aspx"
             );
            routes.MapPageRoute(
              "BuyFr",
              HttpContext.GetGlobalResourceObject("Links", "FrenchBuy").ToString().TrimStart('/'),
              "~/Buy.aspx"
            );
            routes.MapPageRoute(
              "BuyAr",
              HttpContext.GetGlobalResourceObject("Links", "ArabicBuy").ToString().TrimStart('/'),
              "~/Buy.aspx"
            );

            routes.MapPageRoute(
              "OldBuy",
              "real-estate-for-sale.aspx",
              "~/Buy.aspx"
            );
            routes.MapPageRoute(
              "OldRent",
              "real-estate-for-rent.aspx",
              "~/Rent.aspx"
            );

            routes.MapPageRoute(
               "RentEn",
               HttpContext.GetGlobalResourceObject("Links", "Rent").ToString().TrimStart('/'),
               "~/Rent.aspx"
             );
            routes.MapPageRoute(
              "RentFr",
              HttpContext.GetGlobalResourceObject("Links", "FrenchRent").ToString().TrimStart('/'),
              "~/Rent.aspx"
            );
            routes.MapPageRoute(
              "RentAr",
              HttpContext.GetGlobalResourceObject("Links", "ArabicRent").ToString().TrimStart('/'),
              "~/Rent.aspx"
            );


            routes.MapPageRoute(
               "MortagesEn",
               HttpContext.GetGlobalResourceObject("Links", "Mortages").ToString().TrimStart('/'),
               "~/Mortages.aspx"
             );
            routes.MapPageRoute(
              "MortagesFr",
              HttpContext.GetGlobalResourceObject("Links", "FrenchMortages").ToString().TrimStart('/'),
              "~/Mortages.aspx"
            );
            routes.MapPageRoute(
              "MortagesAr",
              HttpContext.GetGlobalResourceObject("Links", "ArabicMortages").ToString().TrimStart('/'),
              "~/Mortages.aspx"
            );

            routes.MapPageRoute(
               "ServicesEn",
               HttpContext.GetGlobalResourceObject("Links", "Services").ToString().TrimStart('/'),
               "~/Services.aspx"
             );
            routes.MapPageRoute(
              "ServicesFr",
              HttpContext.GetGlobalResourceObject("Links", "FrenchServices").ToString().TrimStart('/'),
              "~/Services.aspx"
            );
            routes.MapPageRoute(
              "ServicesAr",
              HttpContext.GetGlobalResourceObject("Links", "ArabicServices").ToString().TrimStart('/'),
              "~/Services.aspx"
            );

            routes.MapPageRoute(
                "EvaluationRequest",
                "EvaluationRequest/{action}",
                "~/EvaluationRequest.aspx", false, new RouteValueDictionary { }, new RouteValueDictionary { { "action", @"Eval|Manage|Advise" } }
            );

            routes.MapPageRoute(
              "EvaluationRequestEn",
              "{locale}/EvaluationRequest/{action}",
              "~/EvaluationRequest.aspx", false, new RouteValueDictionary { }, new RouteValueDictionary { { "action", @"Eval|Manage|Advise" } }
            );

            routes.MapPageRoute(
             "InvestmentsAr",
             HttpContext.GetGlobalResourceObject("Links", "ArabicInvestments").ToString().TrimStart('/'),
             "~/Investments.aspx"
           );

            routes.MapPageRoute(
             "ArabicAbout",
             HttpContext.GetGlobalResourceObject("Links", "ArabicAbout").ToString().TrimStart('/'),
             "~/AboutUs.aspx"
           );

            routes.MapPageRoute(
             "ArabicContact",
             HttpContext.GetGlobalResourceObject("Links", "ArabicContact").ToString().TrimStart('/'),
             "~/ContactUs.aspx"
           );

            routes.MapPageRoute(
             "ArabicFeedback",
             HttpContext.GetGlobalResourceObject("Links", "ArabicFeedback").ToString().TrimStart('/'),
             "~/Feedback.aspx"
           );


            RouteTable.Routes.Add(new Route("images/{*pathInfo}", new StopRoutingHandler()));
            RouteTable.Routes.Add(new Route("includes/{*pathInfo}", new StopRoutingHandler()));
            RouteTable.Routes.Add(new Route("french/includes/{*pathInfo}", new StopRoutingHandler()));
            RouteTable.Routes.Add(new Route("App_Themes/*/{*pathInfo}", new StopRoutingHandler()));
            RouteTable.Routes.Add(new Route("DataService.asmx", new StopRoutingHandler()));
            RouteTable.Routes.Add(new Route("Administration/{*pathInfo}", new StopRoutingHandler()));
            RouteTable.Routes.Add(new Route("DataServiceWCF.svc", new StopRoutingHandler()));
            //RouteTable.Routes.Add(new Route("addresses-ar.xml", new StopRoutingHandler()));
            //RouteTable.Routes.Add(new Route("addresses-fr.xml", new StopRoutingHandler()));
            //RouteTable.Routes.Add(new Route("addresses-en.xml", new StopRoutingHandler()));
            //RouteTable.Routes.Add(new Route("locator-ar.swf", new StopRoutingHandler()));
            //RouteTable.Routes.Add(new Route("locator-fr.swf", new StopRoutingHandler()));
            //RouteTable.Routes.Add(new Route("locator-en.swf", new StopRoutingHandler()));
            //routes.MapPageRoute(
            //    "AboutRouteFr",
            //    "fr/About",
            //    "~/AboutUs.aspx?lang=fr-FR"
            //);
            //routes.MapPageRoute(
            //    "AboutRouteAr",
            //    "ar/About",
            //    "~/AboutUs.aspx?lang=ar-LB"
            //);

        }


        protected void Session_Start(object sender, EventArgs e)
       {
            //HttpContext context = HttpContext.Current;
            //if (context.Request["lang"] == null)
            //{
            //    Session["MyCulture"] = "en-US";
            //}
            //else
            //{
            //    Session["MyCulture"] = context.Request["lang"].ToString();
            //}
            HttpRequest httpRequest = HttpContext.Current.Request;
            if (httpRequest.Browser.IsMobileDevice)
            {
                string path = httpRequest.Url.PathAndQuery;
                bool isOnMobilePage = path.StartsWith("/Mobile/",
                                                      StringComparison.OrdinalIgnoreCase);
                if (!isOnMobilePage)
                {
                    string redirectTo = "";
                    if(Request.RequestContext.RouteData.Values.ContainsKey("PRL"))
                    {
                        redirectTo = "~/Mobile/Prop.aspx?id=" + Request.RequestContext.RouteData.Values["PRL"];
                    }
                    else
                    {
                        redirectTo = "~/Mobile/Default.aspx";
                    }

                    // Could also add special logic to redirect from certain 
                    // recognised pages to the mobile equivalents of those 
                    // pages (where they exist). For example,
                    // if (HttpContext.Current.Handler is UserRegistration)
                    //     redirectTo = "~/Mobile/Register.aspx";

                    HttpContext.Current.Response.Redirect(redirectTo);
                }
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HttpContext context = HttpContext.Current;
            string path = context.Request.Url.AbsoluteUri.ToLower();

            //int niceurl = path.Replace("/fr/", "/").LastIndexOf(".com/");
            int niceurl = path.Replace("/fr/", "/").LastIndexOf("8141/");
            int prl = 0;
            //if (niceurl == -1)
            //{
            //    //if (path.ToLower().Contains("/fr/"))
            //    //{
            //    //    context.Items["MyCulture"] = "fr-FR";
            //    //}
            //    Response.Redirect(Request.RawUrl.ToLower().Replace("/fr/", "/"));
            //    //context.RewritePath(context.Request.Url.AbsolutePath.Replace("/fr/", "/")); 
            //}

            string tidyPage = context.Request.Url.AbsolutePath.TrimStart('/');

            //if (tidyPage == HttpContext.GetGlobalResourceObject("Links", "Buy").ToString() || tidyPage == HttpContext.GetGlobalResourceObject("Links", "FrenchBuy").ToString() || tidyPage == HttpContext.GetGlobalResourceObject("Links", "ArabicBuy").ToString())
            //{
            //    context.RewritePath("~/Buy.aspx?For=Sale");
            //    return;
            //}
            // if (tidyPage == HttpContext.GetGlobalResourceObject("Links", "Rent").ToString() || tidyPage == HttpContext.GetGlobalResourceObject("Links", "FrenchRent").ToString() || tidyPage == HttpContext.GetGlobalResourceObject("Links", "ArabicRent").ToString())
            //{
            //    context.RewritePath("~/Rent.aspx?For=Rent");
            //    return;
            //}

            //if (tidyPage == HttpContext.GetGlobalResourceObject("Links", "Mortages").ToString() || tidyPage == HttpContext.GetGlobalResourceObject("Links", "FrenchMortages").ToString() || tidyPage == HttpContext.GetGlobalResourceObject("Links", "ArabicMortages").ToString())
            //{
            //    context.RewritePath("~/Mortages.aspx");
            //    return;
            //}

            //if (tidyPage == HttpContext.GetGlobalResourceObject("Links", "Services").ToString() || tidyPage == HttpContext.GetGlobalResourceObject("Links", "FrenchServices").ToString() || tidyPage == HttpContext.GetGlobalResourceObject("Links", "ArabicServices").ToString())
            //{
            //    context.RewritePath("~/Services.aspx");
            //    return;
            //}


            //string _prl = string.Empty;
            //try
            //{
            //    _prl = path.Replace("/fr/", "/").Substring(niceurl + 5, 8);
            //    if (niceurl == -1 || !int.TryParse(_prl, out prl))
            //    {
            //        //if (path.ToLower().Contains("/fr/"))
            //        //{
            //        //    //context.Items["MyCulture"] = "fr-FR";
            //        //    string ppp = Request.RawUrl.ToLower().Replace("/fr/", "/");
            //        //    if (ppp.Contains("?"))
            //        //    {
            //        //        ppp = ppp + "&lang=fr-FR";
            //        //    }
            //        //    else
            //        //    {
            //        //        ppp = ppp + "?lang=fr-FR";
            //        //    }

            //        //    Response.Redirect(ppp); //path.Replace("/fr/", "/");
            //        //}
            //    }
            //    else
            //    {
            //        //if (path.ToLower().Contains("/fr/"))
            //        //{
            //        //    //context.Items["MyCulture"] = "fr-FR";
            //        //    Response.Redirect("~/PropertyDetails.aspx?ID=" + prl.ToString() + "&lang=fr-FR");
            //        //}
            //        //else
            //            context.RewritePath("~/PropertyDetails.aspx?ID=" + prl.ToString());
            //    }
            //}
            //catch (Exception)
            //{


            //}





        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}