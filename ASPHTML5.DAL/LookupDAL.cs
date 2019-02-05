using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class LookupDAL: BaseDal
    {
        #region Methods
        public DataTable GetPropertyTypes()
        {
            return base.GetDataTable("vwProperty_GetPropertyType");
        }

        public DataTable GetPropertyLocations()
        {
            return base.GetDataTable("vwProperty_GetQadaa");
        }

        public DataTable GetPropertyDisticts()
        {
            return base.GetDataTable("vwProperty_GetDistrict");
        }

        public DataTable GetNeighborhood()
        {
            return base.GetDataTable("vwProperty_GetNeighborhood");
        }

        public DataTable GetQadaaDisticts(string qadaa)
        {
            return base.GetDataTable("vwProperty_GetQadaaDistricts",qadaa);
        }
        #endregion

    }
}
