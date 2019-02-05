using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class LoginDAL :BaseDal
    {
        #region Login Methods
        public DataTable GetLogins()
        {
            return base.GetDataTable("AppLogins_GetAll");
        }

        public void DeleteLogin(Guid id)
        {
            base.ExecNonQuery("AppLogins_Delete", id);
        }

        public void UpdateLogin(Guid ContactId , string Pass, string AdditionalInfo)
        {
            base.ExecNonQuery("AppLogins_Update", ContactId, Pass, AdditionalInfo);
        }

        public void AddLogin(Guid ContactID, string UserName, string Pass, string AdditionalInfo)
        {
            base.ExecNonQuery("AppLogins_Add", ContactID, UserName, Pass, AdditionalInfo);
        }

        public DataRow GetLogin(Guid ContactID)
        {
            DataRow retVal = null;
            DataTable dt = base.GetDataTable("AppLogins_GetById", ContactID);
            if (dt != null && dt.Rows.Count > 0)
                retVal = dt.Rows[0];
            return retVal;
        }
        #endregion
    }
}
