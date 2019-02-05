using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    [Serializable]
    public class Showing
    {
        #region
        [NonSerialized]
        private static ShowingsDAL data;
        private static ShowingsDAL Data
        {
            get
            {
                if (data == null)
                {
                    data =new ShowingsDAL();
                }
                return data;
            }
        }
        #endregion

        #region Properties 
        public Guid ShowingID { get; set; }
        public string PRL { get; set; }
        public Guid ContactID { get; set; }
        public string AgentName { get; set; }
        public Guid OwnerID { get; set; }
        public DateTime ShowingDate { get; set; }
        public string ContactComment { get; set; }
        public string AgentComment { get; set; }
        public string AdditionalInfo { get; set; }
        public bool Showed { get; set; }
        #endregion

        #region ctor
        public Showing()
        {

        }
        #endregion

         #region Methods
        public ShowingCollection GetByID(Guid id)
        {
            return InitializeCollection(Data.GetShowingForID(id));
        }
        public ShowingCollection GetShowings()
        {
            return InitializeCollection(Data.GetShowings());
        }
        public void DeleteShowing()
        {
            Data.DeleteShowing(this.ShowingID);
        }
        
        public void AddShowing()
        {
            Data.AddShowing(this.ShowingID,this.PRL,this.ContactID,this.AgentName,this.OwnerID,this.ShowingDate,this.ContactComment,this.AgentComment,this.AdditionalInfo,this.Showed);
        }
        
         #endregion

        #region Internals
        private Showing InitializeObject(DataRow dr)
        {
            try
            {
                Showing retVal = null;
                if (dr != null)
                {
                    retVal = new Showing();
                    retVal.ShowingID =  new Guid(dr["ShowingID"].ToString());
                    retVal.PRL = dr["PRL"].ToString();
                    retVal.ContactID =new Guid(dr["ContactID"].ToString());
                    retVal.AgentName = dr["AgentName"].ToString();
                    retVal.OwnerID =new Guid(dr["OwnerID"].ToString());
                    retVal.ShowingDate =(DateTime)dr["ShowingDate"];
                    retVal.ContactComment = dr["ContactComment"].ToString();
                    retVal.AgentComment = dr["AgentComment"].ToString();
                    retVal.AdditionalInfo = dr["AdditionalInfo"].ToString();
                    retVal.Showed =(bool)dr["Showed"];
                }
                return retVal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
    }
        private ShowingCollection InitializeCollection(DataTable dt)
        {
            ShowingCollection retVal = null;
            if(dt != null && dt.Columns.Count>0)
            {
                retVal= new ShowingCollection();
                foreach(DataRow row in dt.Rows)
                {
                    Showing item = InitializeObject(row);
                    retVal.Add(item);
                }
             }
                return retVal;
            
        }
#endregion
}
        [Serializable]
        public class ShowingCollection :List<Showing>
        {
        }
    }
