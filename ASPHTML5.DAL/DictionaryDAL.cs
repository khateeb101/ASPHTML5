using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class DictionaryDAL : BaseDal
    {
        #region Methods
        public DataRow GetById(string id)
        {
            DataRow retVal = null;
            DataTable dt = base.GetDataTable("DictionaryTable_GetById", id);
            if (dt != null && dt.Rows.Count > 0)
                retVal = dt.Rows[0];
            return retVal;
        }

        public DataTable GetByKey(string id)
        {
            return base.GetDataTable("DictionaryTable_GetById", id);
        }

        public void Add(string id, string english, string french, string arabic)
        {
            base.ExecNonQuery("DictionaryTable_Add", id, english, french, arabic);
        }

        public string GetLocalizedValue(string key, string culture, string value)
        {
            string retVal = "";
            DataTable o = GetDataTable("DictionaryTable_GetByIdAndValue", key, culture, value);
            if (o.Rows.Count > 0 && o.Columns.Contains(culture)) // 2nd Condition added by Kamal 19/07/2012
                retVal = o.Rows[0][culture].ToString();
            return retVal;
        }
        #endregion

    }
}
