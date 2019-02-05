using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class JobOpportunity : BasePage
    {
        #region Variables
        #endregion

        #region Properties
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            UC_JobListing1.DataListSource = new Job().GetJobsTable();
        }
        #endregion

        #region Controls Event Handelrs
        #endregion

        #region Methods
        #endregion
    }
}
