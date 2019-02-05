using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.Text;
using System.IO;

namespace ASPHTML5.Web.UserControls
{
    public partial class UCLeftHtml : System.Web.UI.UserControl
    {
        #region Properties
        #endregion

        #region Page Event Handlers
        /*protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            ScriptManager.RegisterStartupScript(this, typeof(UCLeftHtml), "CollapseAnimation", "var collapse1=new animatedcollapse('menu1', 800, false);", true);
        }*/
        /*protected override void Render(HtmlTextWriter writer)
        {
            ScriptManager sm = ScriptManager.GetCurrent(Page);
            if (sm.IsInAsyncPostBack)
            {
                StringBuilder sb = new StringBuilder();
                base.Render(new HtmlTextWriter(new StringWriter(sb)));
                string script = sb.ToString();
                ScriptManager.RegisterStartupScript(this, typeof(UCLeftHtml), UniqueID, script, false);
            }
            else
            {
                base.Render(writer);
            }
        }*/

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        #endregion
      
      

        #region Methods
      
        #endregion
    }
}