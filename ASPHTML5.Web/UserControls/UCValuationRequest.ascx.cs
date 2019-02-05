using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using ASPHTML5.BAL;

namespace ASPHTML5.Web.UserControls
{
    public partial class UCValuationRequest : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgRequest_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                StringBuilder builder = new StringBuilder(EmailTemplates.EvaluationRequestEmail);
                builder = builder.Replace("#Title#", "N/A");
                builder = builder.Replace("#FirstName#", txtName.Value);
                builder = builder.Replace("#SurName#", txtName.Value);
                builder = builder.Replace("#Phone#", txtPhone.Value);
                builder = builder.Replace("#Email#", txtEmail.Value);
                builder = builder.Replace("#Condition#", "N/A");
                builder = builder.Replace("#Address#", "N/A");
                builder = builder.Replace("#City#", txtCountry.Value);
                builder = builder.Replace("#PropertyDetails#", "N/A");
                BAL.Common.SendEmail(new string[] { BAL.MiscActivity.GetSettings("EmailFrom").ToString() }, null, String.Concat("Evaluation Request Form Submitted By '", txtName.Value, "'"), builder.ToString());
                ScriptManager.RegisterClientScriptBlock(imgRequest, typeof(Page), "imgSubmit", "<script language='javascript'>alert('" + this.GetLocalResourceObject("Text.EmailSubmitted") + "');</script>", false);
            }
            catch { }
        }
    }
}