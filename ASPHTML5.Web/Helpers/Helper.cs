using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Collections;

namespace ASPHTML5.Web.Helpers
{
    internal static class Helper
    {
        internal static void LoadDropDown(DropDownList ddl, IList dataSource, 
            string textField, string valueField, bool insertDefault, string defaultValue)
        {
            ddl.DataSource = dataSource;
            if(!String.IsNullOrEmpty(textField))
                ddl.DataTextField = textField;
            if(!String.IsNullOrEmpty(valueField))
                ddl.DataValueField = valueField;
            ddl.DataBind();
            List<ListItem> listCopy = new List<ListItem>();
            foreach (ListItem item in ddl.Items)
                listCopy.Add(item);
            ddl.Items.Clear();
            foreach (ListItem item in listCopy.OrderBy(item => item.Text))
                ddl.Items.Add(item);
            if (insertDefault)
            {
                ddl.Items.Insert(0, new ListItem(defaultValue, ""));
            }
        }
    }
}
