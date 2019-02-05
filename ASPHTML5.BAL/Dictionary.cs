using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    [Serializable]
    public class Dictionary
    {
        #region Variables
        [NonSerialized]
        private static DictionaryDAL data;
        private static DictionaryDAL Data
        {
            get
            {
                if (data == null)
                {
                    data = new DictionaryDAL();
                }
                return data;
            }
        }
        #endregion

        #region Properties
        public string Id {get;set;}
        public string English{get;set;}
        public string French {get; set;}
        public string Arabic{get;set;}
        #endregion

        #region ctor
        public Dictionary()
        {
 
        }
        #endregion

        #region Methods
        public Dictionary GetById()
        {
            return InitializeObject(Data.GetById(this.Id));
        }

        public DictionaryCollection GetByKey()
        {
            return InitializeCollection(Data.GetByKey(this.Id));
        }

        public static string GetLocalizedValue(string key, string culture, string value)
        {
            return new DictionaryDAL().GetLocalizedValue(key, culture, value);
        }

        public void AddDictionary()
        {
            Data.Add(this.Id, this.English, this.French, this.Arabic);
        }

        public void AddDictionaryCollection(DictionaryCollection col)
        {
            if (col != null & col.Count > 0)
            {
                foreach (Dictionary dict in col)
                    dict.AddDictionary();
            }
        }

        #endregion

        #region Internals
        private Dictionary InitializeObject(DataRow dr)
        {
            try
            {
                Dictionary retVal = null;
                if (dr != null)
                {
                    retVal = new Dictionary();
                    retVal.Id = dr["Id"].ToString();
                    retVal.English = dr["English"].ToString();
                    retVal.French = dr["French"].ToString();
                    retVal.Arabic = dr["Arabic"].ToString();
                }
                return retVal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private DictionaryCollection InitializeCollection(DataTable dt)
        {
            DictionaryCollection retVal = null;
            if (dt != null && dt.Columns.Count > 0)
            {
                retVal = new DictionaryCollection();
                foreach (DataRow row in dt.Rows)
                {
                    Dictionary item = InitializeObject(row);
                    retVal.Add(item);
                }
            }
            return retVal;
        }
        #endregion
    }

    [Serializable]
    public class DictionaryCollection : List<Dictionary>
    { 
    }
}
