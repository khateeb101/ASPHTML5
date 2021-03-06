﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHTML5.Web
{
    public partial class Feedback_ThankYou : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Feedback_ThankYou"] == null)
                {
                    litMessage.Text = this.GetLocalResourceObject("Text.EmailSubmitted").ToString();
                }
                else
                {
                    litMessage.Text = this.GetLocalResourceObject("Text.ErrorOccurred").ToString() + Environment.NewLine + Session["Feedback_ThankYou"];
                }
            }
        }
    }
}