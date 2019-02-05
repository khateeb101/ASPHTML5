using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class Buy : BasePage
    {
        #region Variables
        #endregion

        #region Properties
        #endregion

        #region Page Event Handlers
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
                UC_PropertiesListing1.DataListSource = new Property().GetByPropertyForTable(Enums.PropertyFor.Sale);
            //}
        }
        #endregion

        #region Controls Event Handelrs
        #endregion

        #region Methods
        #endregion

        #region Methods
        #endregion
    }
}
