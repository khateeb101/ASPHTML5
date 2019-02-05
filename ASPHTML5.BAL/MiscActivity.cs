using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Diagnostics;
using System.Configuration;
using System.IO;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    public class MiscActivity
    {
        #region Variables
        #endregion

        #region Properties
        #endregion

        #region ctor
        #endregion

        #region Methods
        public static void NewsletterSubscribtion(string email, bool subscribe)
        {
            new MiscActivityDAL().NewsletterSubscribtionRegister(email, subscribe);
        }

        public static void NewsletterSubscribtionActivate(string email)
        {
            new MiscActivityDAL().NewsletterSubscribtionActivate(email);
        }

        public static DataTable NewsletterGetAll()
        {
            return new MiscActivityDAL().NewsletterSubscribtionGetAll();
        }

        public static object GetSettings(string key)
        {
            return new MiscActivityDAL().GetSettings(key);
        }

        public static void UpdateSettings(string key, string value)
        {
            new MiscActivityDAL().UpdateSettings(key, value);
        }

        public static void AddSavedSearch(string email, string iWantTo, string where, string fromPriceRange,
            string toPriceRange, string fromBedroomNbr, string toBedroomNbr, string propertyType)
        {
            new MiscActivityDAL().SavedResearchAdd(email, iWantTo, where, fromPriceRange, toPriceRange, fromBedroomNbr, toBedroomNbr, propertyType);
        }

        public static DataRow GetSavedSearch(string email)
        {
            return new MiscActivityDAL().SavedSearchGet(email);
        }
        #endregion

        #region Internals
        #endregion
    }
}
