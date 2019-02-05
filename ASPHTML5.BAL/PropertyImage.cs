using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    [Serializable]
    public class PropertyImage
    {
        #region Variables
        [NonSerialized]
        private static PropertyImageDAL data;
        private static PropertyImageDAL Data
        {
            get
            {
                if (data == null)
                {
                    data = new PropertyImageDAL();
                }
                return data;
            }
        }
        #endregion

        #region Properties
        public Guid Id { get; set; }

        public string Description { get; set; }

        public byte[] Image { get; set; }

        public string PRL { get; set; }

        public string Extension { get; set; }

        public bool IsFirstImage { get; set; }
        #endregion

        #region ctor
        #endregion

        #region Methods
        public PropertyImage GetById()
        {
            return InitializeObject(Data.GetById(this.Id));
        }
        public PropertyImage GetByIdbanner()
        {
            return InitializeObject(Data.GetByIdbanner(this.Id));
        }

        public PropertyImageCollection GetByPRL()
        {
            return InitializeCollection(Data.GetByPRL(this.PRL));
        }

        public DataTable GetByPRLTable()
        {
            return Data.GetByPRL(this.PRL);
        }

        public DataTable GetBanners()
        {
            return Data.GetBanners();
        }

        public void Add()
        {
            if(this.Id == Guid.Empty)
                this.Id = Guid.NewGuid();
            Data.Add(this.Id, this.Description, this.Image, this.Extension, this.PRL ,this.IsFirstImage);
        }

        public void Add(List<PropertyImage> col)
        {
            foreach (PropertyImage img in col)
            {
                img.Add();
            }
        }

        public void Add(PropertyImageCollection col)
        {
            foreach (PropertyImage img in col)
            {
                img.Add();
            }
        }

        public void DeleteByPRL()
        {
            Data.DeleteByPRL(this.PRL);
        }
        #endregion

        #region Internals
        private PropertyImage InitializeObject(DataRow dr)
        {
            try
            {
                PropertyImage retVal = null;
                if (dr != null)
                {
                    retVal = new PropertyImage();
                    retVal.Id = new Guid(dr["Id"].ToString());
                    retVal.PRL = dr["PRL"].ToString();
                    retVal.Description = dr["Description"].ToString();
                    retVal.Extension = dr["Extension"].ToString();
                    retVal.Image = dr["Image"] != null ? (byte[])dr["Image"] : null;
                    retVal.IsFirstImage = Convert.ToBoolean(dr["IsFirstImage"]);
                }
                return retVal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        private PropertyImageCollection InitializeCollection(DataTable dt)
        {
            try
            {
                PropertyImageCollection retVal = null;
                if (dt != null && dt.Columns.Count > 0)
                {
                    retVal = new PropertyImageCollection();
                    foreach (DataRow row in dt.Rows)
                    {
                        PropertyImage obj = InitializeObject(row);
                        retVal.Add(obj);
                    }
                }
                return retVal;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        #endregion
    }
    [Serializable]
    public class PropertyImageCollection : List<PropertyImage>
    { 
    }
}
