using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class JobOpportunityManagement : AdminBasePage
    {
        #region Variables
        #endregion

        #region Properties
        private Job JobOpportunity
        {
            get
            {
                return ViewState["JobOpportunity"] as Job;
            }
            set
            {
                ViewState["JobOpportunity"] = value;
            }
        }
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
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (JobOpportunity == null)
            {
                Job job = new Job();
                job.Id = Guid.NewGuid();
                job.Title = txtTitle.Text;
                job.Description = txtDescription.Text;
                job.FrenchTitle = txtFrenchTitle.Text;
                job.FrenchDescription = txtFrenchDescription.Text;
                job.ArabicTitle = txtArabicTitle.Text;
                job.ArabicDescription = txtArabicDesciption.Text;
                job.AddJob();
            }
            else
            {
                Job job = new Job();
                job.Id = JobOpportunity.Id;
                job.Title = txtTitle.Text;
                job.Description = txtDescription.Text;
                job.FrenchTitle = txtFrenchTitle.Text;
                job.FrenchDescription = txtFrenchDescription.Text;
                job.ArabicTitle = txtArabicTitle.Text;
                job.ArabicDescription = txtArabicDesciption.Text;
                job.UpdateJob();
            }
            pnJob.Visible = false;
            ClearPanel();
            BindGrid();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            pnJob.Visible = false;
            ClearPanel();
            BindGrid();
        }

        protected void btnEdit_Click(object sender, CommandEventArgs e)
        {
            string s = e.CommandArgument.ToString();
            Job job = new Job();
            job.Id = new Guid(s);
            job = job.GetById();
            JobOpportunity = job;
            pnJob.Visible = true;
            txtTitle.Text = job.Title;
            txtDescription.Text = job.Description;
            txtFrenchTitle.Text = job.FrenchTitle;
            txtFrenchDescription.Text = job.FrenchDescription;
            txtArabicTitle.Text = job.ArabicTitle;
            txtArabicDesciption.Text = job.ArabicDescription;
        }

        protected void btnViewCV_Click(object sender, CommandEventArgs e)
        {
            string s = e.CommandArgument.ToString();
            Response.Redirect("JobOpportunityCandidateManagement.aspx?Id=" + s);
        }

        protected void btnDelete_Click(object sender, CommandEventArgs e)
        {
            Job job = new Job();
            job.Id = new Guid(e.CommandArgument.ToString());
            try
            {
                job.DeleteJob();
                BindGrid();
            }
            catch
            {
                ScriptManager.RegisterClientScriptBlock(gvLKUP, typeof(Page), "DeleteExistingEntry", "<script language='javascript'>alert('The Job Opportunity could not be deleted!');</script>", false);
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            pnJob.Visible = true;
        }
        #endregion

        #region Methods
        private void BindGrid()
        {
            gvLKUP.DataSource = new Job().GetJobs();
            gvLKUP.DataBind();
        }

        private void ClearPanel()
        {
            JobOpportunity = null;
            txtTitle.Text = "";
            txtDescription.Text = "";
        }
        #endregion
        
    }
}
