using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    [Serializable]
    public class Lookup
    {
        #region Variables
        [NonSerialized]
        private static LookupDAL data;
        private static LookupDAL Data
        {
            get
            {
                if (data == null)
                {
                    data = new LookupDAL();
                }
                return data;
            }
        }
        #endregion

        #region Properties
        public string Id { get; set; }

        public string Value { get; set; }
        #endregion

        #region ctor
        public Lookup()
        {
 
        }
        #endregion

        #region Methods
        public LookupCollection GetPropertyTypes()
        {
            return InitializeCollection(Data.GetPropertyTypes());
        }

        public LookupCollection GetPropertyLocations()
        {
            return InitializeCollection(Data.GetPropertyLocations());
        }

        public LookupCollection GetPropertyDisticts()
        {
            return InitializeCollection(Data.GetPropertyDisticts());
        }

        public LookupCollection GetPropertyNeighborhood()
        {
            return InitializeCollection(Data.GetNeighborhood());
        }

        public LookupCollection GetQadaaDisticts(string qadaa)
        {
            return InitializeCollection(Data.GetQadaaDisticts(qadaa));
        }
        #endregion

        #region Internals
        private Lookup InitializeObject(DataRow dr)
        {
            try
            {
                Lookup retVal = null;
                if (dr != null)
                {
                    retVal = new Lookup();
                    retVal.Id = dr["LookupValue"].ToString();
                    retVal.Value = dr["LookupValue"].ToString();
                }
                return retVal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private LookupCollection InitializeCollection(DataTable dt)
        {
            LookupCollection retVal = null;
            if (dt != null && dt.Columns.Count > 0)
            {
                retVal = new LookupCollection();
                foreach (DataRow row in dt.Rows)
                {
                    Lookup item = InitializeObject(row);
                    retVal.Add(item);
                }
            }
            return retVal;
        }
        #endregion
    }

    [Serializable]
    public class LookupCollection : List<Lookup>
    { 
    }
}
