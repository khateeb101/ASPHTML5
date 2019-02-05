using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace ASPHTML5.DAL.Common
{
    [Serializable]
    public enum TransactionMode { Start, Join, Standalon }

    /// <summary>
    /// This class is a base class for all data access layer classes. Its main
    /// functions are preparing the connection, stored procedures sql commands
    /// and parameter preparation.
    /// </summary>
    [Serializable]
    public class BaseDal
    {
        #region Properties
        
        [NonSerialized]
        protected SqlConnection dBConn;
        
        
        private string connString;

       
        #endregion

        #region ctor
        public BaseDal()
        {
            connString = ConfigurationManager.ConnectionStrings["ASPHTML5DBConnectionString"].ConnectionString;
            dBConn = new SqlConnection(connString);
            
            
        }
        #endregion

       
        protected SqlDataReader GetDataReader(string spName, params object[] parametersValue)
        {
            
                SqlDataReader reader = SqlHelper.ExecuteReader(dBConn, spName, parametersValue);
                return reader;

           

        }
        
       

        #region GetDataTable

        protected DataTable GetDataTable(string spName, params object[] parametersValue)
        {
            DataTable dt = new DataTable();
            dt.Load(GetDataReader(spName, parametersValue));
            return dt;

        }

        


        #endregion

        #region GetDataSet
        protected DataSet GetDataSet(string spName, params object[] parametersValue)
        {
           
                DataSet ds = SqlHelper.ExecuteDataset(dBConn, spName, parametersValue);
                return ds;
           

        }

        #endregion

        #region GetScalar
        

       

        protected object GetScalar(string spName, params object[] parametersValue)
        {

            return SqlHelper.ExecuteScalar(dBConn, spName, parametersValue);
        }

        #endregion

        #region ExecNonQuery
       
        protected int ExecNonQuery(string spName, params object[] parametersValue)
        {
            return SqlHelper.ExecuteNonQuery(dBConn, spName, parametersValue);
        }

       

        #endregion


        #region ToDBValue
        public static object ToDBValue(object buffer)
        {
            if (buffer is System.Int32)
            {
                try
                {
                    if (Convert.ToInt32(buffer) == -1)
                    {
                        buffer = DBNull.Value;
                    }
                }
                catch
                {
                    buffer = DBNull.Value;
                }
            }
            else if (buffer is System.String || buffer == null)
            {
                try
                {
                    if (buffer.ToString().Equals(string.Empty))
                    {
                        buffer = DBNull.Value;
                    }
                }
                catch
                {
                    buffer = DBNull.Value;
                }
            }
            else if (buffer is System.DateTime)
            {
                try
                {
                    if (Convert.ToDateTime(buffer).Equals(DateTime.MinValue))
                    {
                        buffer = DBNull.Value;
                    }
                }
                catch
                {
                    buffer = DBNull.Value;
                }
            }
            return buffer;
        }

        public static object ToDBValue(object buffer, object valueToReplace)
        {
            if (buffer is System.Int32)
            {
                try
                {
                    if (Convert.ToInt32(buffer) == Convert.ToInt32(valueToReplace))
                    {
                        buffer = DBNull.Value;
                    }
                }
                catch
                {
                    buffer = DBNull.Value;
                }
            }
            else if (buffer is System.String)
            {
                try
                {
                    if (buffer.ToString().Equals(valueToReplace.ToString()))
                    {
                        buffer = DBNull.Value;
                    }
                }
                catch
                {
                    buffer = DBNull.Value;
                }
            }
            else if (buffer is System.DateTime)
            {
                try
                {
                    if (buffer == null || Convert.ToDateTime(buffer).Equals(Convert.ToDateTime(valueToReplace)))
                    {
                        buffer = DBNull.Value;
                    }
                }
                catch
                {
                    buffer = DBNull.Value;
                }
            }


            return buffer;
        } 
        #endregion

    }
}

