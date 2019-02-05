using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    [Serializable]
    public class Login
    {
        #region
        [NonSerialized]
        private static LoginDAL data;
        private static LoginDAL Data
        {
            get
            {
                if (data == null)
                {
                    data = new LoginDAL();
                }
                return data;
            }
        }
        #endregion

        #region Properties
        public Guid ContactID { get; set; }
        public string UserName { get; set; }
        public string Pass { get; set; }
        public string AdditionalInfo { get; set; }
        #endregion

        #region ctor
        public Login()
        {

        }
        #endregion

        #region Methods
        public Login GetByID()
        {
            return InitializeObject(Data.GetLogin(this.ContactID));
        }
        public LoginCollection GetLogins()
        {
            return InitializeCollection(Data.GetLogins());
        }
        public DataTable GetLoginsTable()
        {
            return Data.GetLogins();
        }

        public void DeleteLogin()
        {
            Data.DeleteLogin(this.ContactID);
        }

        public void UpdateLogin()
        {
            Data.UpdateLogin(this.ContactID, this.Pass, this.AdditionalInfo);
        }

        public void AddLogin()
        {
            Data.AddLogin(this.ContactID, this.UserName, this.Pass, this.AdditionalInfo);
        }
        #endregion

        #region Internals
        private Login InitializeObject(DataRow dr)
        {
            try
            {
                Login retVal = null;
                if (dr != null)
                {
                    retVal = new Login();
                    retVal.ContactID = new Guid(dr["ContactID"].ToString());
                    retVal.UserName = dr["UserName"].ToString();
                    retVal.Pass = dr["Pass"].ToString();
                    retVal.AdditionalInfo = dr["AdditionalInfo"].ToString();
                }
                return retVal;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        private LoginCollection InitializeCollection(DataTable dt)
        {
            LoginCollection retval = null;
            if (dt != null && dt.Columns.Count > 0)
            {
                retval = new LoginCollection();
                foreach (DataRow row in dt.Rows)
                {
                    Login item = InitializeObject(row);
                    retval.Add(item);
                }
            }
            return retval;
        }
        #endregion
    }

    [Serializable]
    public class LoginCollection : List<Login>
    {
    }

}