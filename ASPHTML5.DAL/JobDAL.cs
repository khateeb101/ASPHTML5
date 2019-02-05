using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class JobDAL : BaseDal
    {
        #region Job Methods
        public DataTable GetJobs()
        {
            return base.GetDataTable("Job_GetAll");
        }

        public void DeleteJob(Guid id)
        {
            base.ExecNonQuery("Job_Delete", id);
        }

        public DataRow GetJobById(Guid id)
        {
            DataRow retVal = null;
            DataTable dt = base.GetDataTable("Job_GetById", id);
            if (dt != null && dt.Rows.Count > 0)
                retVal = dt.Rows[0];
            return retVal;
        }

        public void AddJob(Guid id, string title, string description,string ArabicTitle,string ArabicDescription,string FrenchTitle,string FrenchDescription)
        {
            base.ExecNonQuery("Job_Add", id, title, description,ArabicTitle,ArabicDescription,FrenchTitle,FrenchDescription);
        }

        public void UpdateJob(Guid id, string title, string description,string ArabicTitle,string ArabicDescription,string FrenchTitle,string FrenchDescription)
        {
            base.ExecNonQuery("Job_Update", id, title, description, ArabicTitle, ArabicDescription, FrenchTitle, FrenchDescription);
        }
        #endregion

        #region JobCandidate Methods
        public void AddJobCandidate(Guid id, string firstName, string lastName, string phone, string email, string comments, Byte[] cv, string cvName)
        {
            base.ExecNonQuery("JobCandidate_Add", id, firstName, lastName, phone, email, comments, cv, cvName);
        }

        public DataTable GetJobCandidateByJobId(Guid id)
        {
            return base.GetDataTable("JobCandidate_GetByJob", id);
        }

        public DataRow GetJobCandidateById(int id)
        {
            DataRow retVal = null;
            DataTable dt = base.GetDataTable("JobCandidate_GetById", id);
            if (dt != null && dt.Rows.Count > 0)
                retVal = dt.Rows[0];
            return retVal;
        }

        public DataTable GeJobCandidates()
        {
            return base.GetDataTable("JobCandidate_GetAll");
        }
        #endregion
    }
}
