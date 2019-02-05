using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHTML5.Web.Mobile.UserControls
{
    public partial class MobileHeader : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {            

            
        }

       

        protected void btnBuy_Click(object sender, EventArgs e)
        {
           
            string query = "~/Mobile/Default.aspx";
            
            query = String.Concat(query, "?For=#For#&Qadaa=#Qadaa#&Where=#Where#&PriceFrom=#PriceFrom#&PriceTo=#PriceTo#&Type=#Type#&SizeFrom=#SizeFrom#&SizeTo=#SizeTo#");                
            query = query.Replace("#For#", "Sale");                
            
            Response.Redirect(query);
        
        }

        protected void btnRent_Click(object sender, EventArgs e)
        {
            string query = "~/Mobile/Default.aspx";

            query = String.Concat(query, "?For=#For#&Qadaa=#Qadaa#&Where=#Where#&PriceFrom=#PriceFrom#&PriceTo=#PriceTo#&Type=#Type#&SizeFrom=#SizeFrom#&SizeTo=#SizeTo#");
            query = query.Replace("#Where#", "(propertyfor like '%long%' or propertyfor like '%short%')");

            Response.Redirect(query);
        }


    }
}