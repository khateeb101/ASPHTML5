using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    [Serializable]
public class Job
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
        public Guid Id {get;set;}
        public string Title {get;set;}
        public string Description {get; set;}
        public DateTime CreatedDate {get;set;}
        public DateTime ModifiedDate {get;set;}


        public string ArabicTitle { get; set; }
        public string ArabicDescription { get; set; }

        public string FrenchTitle { get; set; }
        public string FrenchDescription { get; set; }
        #endregion

        #region ctor
        public Job()
        {
 
        }
        #endregion

        #region Methods
        public Job GetById()
        {
            return InitializeObject(Data.GetJobById(this.Id));
        }

        public JobCollection GetJobs()
        {
            return InitializeCollection(Data.GetJobs());
        }

        public DataTable GetJobsTable()
        {
            return Data.GetJobs();
        }

        public void DeleteJob()
        {
            Data.DeleteJob(this.Id);
        }

        public void AddJob()
        {
            Data.AddJob(this.Id, this.Title, this.Description,this.ArabicTitle,this.ArabicDescription,this.FrenchTitle,this.FrenchDescription);
        }

        public void UpdateJob()
        {
            Data.UpdateJob(this.Id, this.Title, this.Description, this.ArabicTitle, this.ArabicDescription, this.FrenchTitle, this.FrenchDescription);
        }
        #endregion

        #region Internals
        private Job InitializeObject(DataRow dr)
        {
            try
            {
                Job retVal = null;
                if (dr != null)
                {
                    retVal = new Job();
                    retVal.Id = new Guid(dr["Id"].ToString());
                    retVal.Title = dr["Title"].ToString();
                    retVal.Description = dr["Description"].ToString();
                    retVal.ArabicTitle = dr["ArabicTitle"].ToString();
                    retVal.ArabicDescription = dr["ArabicDescription"].ToString();
                    retVal.FrenchTitle = dr["FrenchTitle"].ToString();
                    retVal.FrenchDescription = dr["FrenchDescription"].ToString();
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

        private JobCollection InitializeCollection(DataTable dt)
        {
            JobCollection retVal = null;
            if (dt != null && dt.Columns.Count > 0)
            {
                retVal = new JobCollection();
                foreach (DataRow row in dt.Rows)
                {
                    Job item = InitializeObject(row);
                    retVal.Add(item);
                }
            }
            return retVal;
        }
        #endregion
    }

    [Serializable]
    public class JobCollection : List<Job>
    { 
    }
}
