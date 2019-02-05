using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    [Serializable]
    public class JobCandidate
    {
        #region Variables
        [NonSerialized]
        private static JobDAL data;
        private static JobDAL Data
        {
            get
            {
                if (data == null)
                {
                    data = new JobDAL();
                }
                return data;
            }
        }
        #endregion

        #region Properties
        public int Id {get;set;}
        public Guid JobId {get;set;}
        public string FirstName {get;set;}
        public string LastName {get; set;}
        public string Phone {get; set;}
        public string Email {get; set;}
        public string Comments {get; set;}
        public DateTime CreatedDate {get;set;}
        public DateTime ModifiedDate {get;set;}
        public Byte[] CV { get; set; }
        public string CVName { get; set; }
        #endregion

        #region ctor
        public JobCandidate()
        {
 
        }
        #endregion

        #region Methods
        public JobCandidate GetById()
        {
            return InitializeObject(Data.GetJobCandidateById(this.Id));
        }

        public JobCandidateCollection GetJobCandidatesByJobId()
        {
            return InitializeCollection(Data.GetJobCandidateByJobId(this.JobId));
        }

        public JobCandidateCollection GetJobCandidates()
        {
            return InitializeCollection(Data.GeJobCandidates());
        }

        public void AddJobCandidate()
        {
            Data.AddJobCandidate(this.JobId, this.FirstName, this.LastName, this.Phone, this.Email, this.Comments, this.CV, this.CVName);
        }
        #endregion

        #region Internals
        private JobCandidate InitializeObject(DataRow dr)
        {
            try
            {
                JobCandidate retVal = null;
                if (dr != null)
                {
                    retVal = new JobCandidate();
                    retVal.Id = Convert.ToInt32(dr["Id"]);
                    retVal.JobId = new Guid(dr["JobId"].ToString());
                    retVal.FirstName = dr["FirstName"].ToString();
                    retVal.LastName = dr["LastName"].ToString();
                    retVal.Phone = dr["Phone"].ToString();
                    retVal.Email = dr["Email"].ToString();
                    retVal.Comments = dr["Comments"].ToString();
                    retVal.CV = dr["CV"] != DBNull.Value ? dr["CV"] as Byte[] : null;
                    retVal.CVName = dr["CVName"].ToString();
                    retVal.CreatedDate = Convert.ToDateTime(dr["CreatedDate"]);
                    retVal.ModifiedDate = Convert.ToDateTime(dr["ModifiedDate"]);
                }
                return retVal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private JobCandidateCollection InitializeCollection(DataTable dt)
        {
            JobCandidateCollection retVal = null;
            if (dt != null && dt.Columns.Count > 0)
            {
                retVal = new JobCandidateCollection();
                foreach (DataRow row in dt.Rows)
                {
                    JobCandidate item = InitializeObject(row);
                    retVal.Add(item);
                }
            }
            return retVal;
        }
        #endregion
    }

    [Serializable]
    public class JobCandidateCollection : List<JobCandidate>
    { 
    }
}
