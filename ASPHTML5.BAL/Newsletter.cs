using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace ASPHTML5.BAL
{
   public class Newsletter
    {
        public Guid id { get; set; }
        public string Name { get; set; }
        public string Name_fr { get; set; }
        public string Name_ar { get; set; }
        public byte[] Image { get; set; }
        public byte[] PDF { get; set; }
        public bool Show_website { get; set; }

        public static List<Newsletter> SelectAllNewsletters()
        {
            DAL.Newsletter dal = new DAL.Newsletter();
            DataTable dt = dal.GetAllNewsletters();
            List<Newsletter> retVal = Load(dt);
            return retVal;
        }

        public static DataTable SelectAllNewslettersTable()
        {
            DAL.Newsletter dal = new DAL.Newsletter();
            DataTable dt = dal.GetAllNewsletters();
            return dt;
        }

        public static Newsletter SelectShowOnWebsiteNewsletter()
        {
            DAL.Newsletter dal = new DAL.Newsletter();
            DataTable dt = dal.GetShowNewsletters();
            if (dt == null || dt.Rows.Count == 0)
                return null;
            else
            {
                Newsletter retVal = Load(dt.Rows[0]);
                return retVal;
            }
        }

        public static Newsletter Load(Guid Id)
        {
            DAL.Newsletter dal = new DAL.Newsletter();
            DataTable dt = dal.Load(Id);
            if (dt == null || dt.Rows.Count == 0)
                return null;
            else
            {
                Newsletter retVal = Load(dt.Rows[0]);
                return retVal;
            }
        }

        public void Save()
        {
            DAL.Newsletter dal = new DAL.Newsletter();
            dal.Save(id, Name, Name_fr, Name_ar, Image, PDF, Show_website);
        }

        public static void Delete(Guid Id)
        {
            DAL.Newsletter dal = new DAL.Newsletter();
            dal.Delete(Id);
        }

        public static List<Newsletter> Load(DataTable dt)
        {
            List<Newsletter> retVal = new List<Newsletter>();

            if (dt != null)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Newsletter item = Newsletter.Load(dr);
                    retVal.Add(item);
                }
            }
            return retVal;
        }

        private static Newsletter Load(DataRow dr)
        {
            Newsletter retVal = new Newsletter();
            if (dr["ID"] != DBNull.Value) { retVal.id = (Guid)dr["ID"]; }
            if (dr["Name"] != DBNull.Value) { retVal.Name = (string)dr["Name"]; }
            if (dr["Name_fr"] != DBNull.Value) { retVal.Name_fr = (string)dr["Name_fr"]; }
            if (dr["Name_ar"] != DBNull.Value) { retVal.Name_ar = (string)dr["Name_ar"]; }
            if (dr["Image"] != DBNull.Value) { retVal.Image = (byte[])dr["Image"]; }
            if (dr["PDF"] != DBNull.Value) { retVal.PDF = (byte[])dr["PDF"]; }
            if (dr["Show_website"] != DBNull.Value) { retVal.Show_website = (bool)dr["Show_website"]; }
            return retVal;
        }
    }
}
