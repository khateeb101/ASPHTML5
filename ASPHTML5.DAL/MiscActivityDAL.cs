using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class MiscActivityDAL : BaseDal
    {
        #region Methods
        public void NewsletterSubscribtionRegister(string email, bool subscribe)
        {
            base.ExecNonQuery("NewsletterSubscribtion_Register", email, subscribe);
        }

        public void NewsletterSubscribtionActivate(string email)
        {
            base.ExecNonQuery("NewsletterSubscription_Activate", email);
        }

        public DataTable NewsletterSubscribtionGetAll()
        {
            return base.GetDataTable("NewsletterSubscription_GetAll");
        }

        public object GetSettings(string key)
        {
            return base.GetScalar("Settings_Get", key);
        }

        public void UpdateSettings(string key, string value)
        {
            base.ExecNonQuery("Settings_Update", key, value);
        }

        public void SavedResearchAdd(string email, string iWantTo, string where, string fromPriceRange,
            string toPriceRange, string fromBedroomNbr, string toBedroomNbr, string propertyType)
        {
            base.ExecNonQuery("SavedSearch_Add", email, iWantTo, where, fromPriceRange, toPriceRange, fromBedroomNbr, toBedroomNbr, propertyType);
        }

        public DataRow SavedSearchGet(string email)
        {
            DataRow retVal = null;
            DataTable dt = base.GetDataTable("SavedSearch_Get", email);
            if (dt != null && dt.Rows.Count > 0)
                retVal = dt.Rows[0];
            return retVal;
        }
        #endregion

    }
}
