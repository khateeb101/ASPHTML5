using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class JobOpportunityCandidateManagement : AdminBasePage
    {
        #region Variables
        #endregion

        #region Properties
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindGrid();
            }
        }
        #endregion

        #region Controls Event Handlers
        protected void btnView_Click(object sender, CommandEventArgs e)
        {
            Response.Redirect("ResumeFileDownload.aspx?Id=" + e.CommandArgument.ToString(), false);
        }
        #endregion

        #region Methods
        private void BindGrid()
        {
            string jobIdS = Request.Params["Id"];
            JobCandidate jobCandidate = new JobCandidate();
            if (!String.IsNullOrEmpty(jobIdS))
            {
                jobCandidate.JobId = new Guid(jobIdS);
                gvLKUP.DataSource = jobCandidate.GetJobCandidatesByJobId();

            }
            else
            {
                gvLKUP.DataSource = jobCandidate.GetJobCandidates();
            }
            gvLKUP.DataBind();
        }
        #endregion
        
    }
}
