using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class Newsletter : BaseDal
    {
        public void Delete(Guid id)
        {
            base.ExecNonQuery("Newsletter_Delete", id);
        }

        public void Save(params object[] para)
        {
            ExecNonQuery("Newsletter_Add", para);
        }

        public DataTable GetAllNewsletters()
        {
            return GetDataTable("Newsletter_GetAll");
        }

        public DataTable GetShowNewsletters()
        {
            return GetDataTable("Newsletter_GetShowOnWebsite");
        }

        public DataTable Load(Guid id)
        {
            return GetDataTable("Newsletter_GetById", id);
        }
    }
}
