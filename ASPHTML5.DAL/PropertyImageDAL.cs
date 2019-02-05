using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class PropertyImageDAL : BaseDal
    {
        #region Methods
        public DataRow GetById(Guid id)
        {
            DataRow retVal = null;
            DataTable dt = base.GetDataTable("PropertyImages_GetById", id);
            if (dt != null && dt.Rows.Count > 0)
                retVal = dt.Rows[0];
            return retVal;
        }
        public DataRow GetByIdbanner(Guid id)
        {
            DataRow retVal = null;
            DataTable dt = base.GetDataTable("PropertyImages_GetByIdbanner", id);
            if (dt != null && dt.Rows.Count > 0)
                retVal = dt.Rows[0];
            return retVal;
        }

        public DataTable GetByPRL(string prl)
        {
            return base.GetDataTable("PropertyImages_GetByPRL", prl);
        }

        public void Add(Guid id, string description, byte[] image, string extension, string prl, bool isFirstImage)
        {
            base.ExecNonQuery("PropertyImages_Add", id, description, image, extension, prl, isFirstImage);
        }

        public void DeleteByPRL(string prl)
        {
            base.ExecNonQuery("PropertyImages_DeleteByPRL", prl);
        }

        public DataTable GetBanners()
        {
            return base.GetDataTable("PropertyImages_GetBanners");
        }

        #endregion

    }
}
