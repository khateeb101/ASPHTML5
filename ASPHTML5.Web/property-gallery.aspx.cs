using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class property_gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["id"] != null)
                {
                    Property propertyImages = new Property().GetByPRL(Request["id"]);
                    if (propertyImages != null)
                    {
                        rptImage.DataSource = propertyImages.Images;
                        rptImage.DataBind();
                    }
                }
            }
        }
    }
}