using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class ShowingsDAL :BaseDal
    {
        #region Showings Methods
        public DataTable GetShowings()
        {
            return base.GetDataTable("AppShowings_GetAll");
        }

        public void DeleteShowing(Guid id)
        {
            base.ExecNonQuery("AppShowings_Delete", id);
        }

        public void AddShowing(Guid ShowingId, string PRL, Guid ContactID, string AgentName, Guid OwnerID, DateTime ShowingDate, string ContactComment, string AgentComment, string AdditionalInfo, bool Showed)
        {
            base.ExecNonQuery("AppShowings_Add", ShowingId, PRL, ContactID, AgentName, OwnerID, ShowingDate, ContactComment, AgentComment, AdditionalInfo, Showed);
        }

        public DataTable GetShowingForID(Guid id)
        {
            return base.GetDataTable("AppShowings_GetForID", id);
        }
        #endregion
    }
}
