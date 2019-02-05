using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL;
using System.Data;

namespace ASPHTML5.BAL
{
    [Serializable]
    public class Property
    {
        #region Variables
        [NonSerialized]
        private static PropertyDAL data;
        private static PropertyDAL Data
        {
            get
            {
                if (data == null)
                {
                    data = new PropertyDAL();
                }
                return data;
            }
        }
        #endregion

        #region Properties
        public string PRL {get;set;}
        public string Qadaa {get;set;}
        public string District {get; set;}
        public string PropertyFor {get;set;}
        public string PropertyType {get;set;}
        public string Neighborhood {get;set;}
        public string Quality {get;set;}
        public int Size {get;set;}
        public int Floor {get;set;}
        public int Receptions {get;set;}
        public int TotalBedrooms {get;set;}
        public int Bathrooms {get;set;}
        public int Age {get;set;}
        public bool Exclusive {get;set;}
        public DateTime StartDate {get;set;}
        public DateTime EndDate {get;set;}
        public int TotalFloor {get;set;}
        public int FamilyRoom {get;set;}
        public int MasterBedRooms {get;set;}
        public int Parkings {get;set;}
        public int RentPrice {get;set;}
        public int SalePrice {get;set;}
        public int BldChargesPerMonth {get;set;}
        public string AdditionalInformation {get;set;}
        public string Web_GuideDescription {get;set;}
        public bool Active {get;set;}
        public bool Pending {get;set;}
        public bool Closed {get;set;}
        public string Zone {get;set;}
        public string ZoneNbr {get;set;}
        public string ZoningDescription {get;set;}
        public int DriverRoom {get;set;}
        public int MaidRoom {get;set;}
        public Guid TopImageId { get; set; }

        public int DiningRoom { get; set; }
        public int Kitchen { get; set; }
        public int MaidBathRoom { get; set; }        
        public bool Generator { get; set; }
        public bool Furnished { get; set; }
        public string AgentName { get; set; }
        public string Department { get; set; }
        public string Country { get; set; }
        public string Features { get; set; }
        public string MapLong { get; set; }
        public string MapLat { get; set; }

        private PropertyImageCollection images;
        public PropertyImageCollection Images
        {
            get
            {
                if (images == null)
                {
                    PropertyImage image = new PropertyImage();
                    image.PRL = this.PRL;
                    images = image.GetByPRL();
                }
                return images;
            }
            set
            {
                images = value;
            }
        }
        #endregion

        #region ctor
        public Property()
        {
 
        }
        #endregion

        #region Methods
        public Property GetByPRL(string prl)
        {
            return InitializeObject(Data.GetByPRL(prl));
        }

        public PropertyCollection GetByPropertyFor(Enums.PropertyFor propertyFor)
        {
            return InitializeCollection(Data.GetByPropertyFor(propertyFor.ToString()));
        }

        public void DeleteByPRL(string prl)
        {
            Data.DeleteByPRL(prl);
        }

        public DataTable GetByPropertyForTable(Enums.PropertyFor propertyFor)
        {
            return Data.GetByPropertyFor(propertyFor.ToString());
        }

        public PropertyCollection GetBySearch(string whereClause)
        {
            return InitializeCollection(Data.GetBySearch(whereClause));
        }

        public DataTable GetBySearchTable(string whereClause)
        {
            return Data.GetBySearch(whereClause);
        }

        public PropertyCollection GetByLatest()
        {
            return InitializeCollection(Data.GetByLatest(Convert.ToInt32(MiscActivity.GetSettings("DaysCount"))));
        }

        public DataTable GetByLatestTable()
        {
            return Data.GetByLatest(Convert.ToInt32(MiscActivity.GetSettings("DaysCount")));
        }

        public void AddUpdate()
        {
            Data.AddUpdate(this.PRL, this.Qadaa, this.District, this.PropertyFor, this.PropertyType, this.Neighborhood,
                this.Quality, this.Size, this.Floor, this.Receptions, this.TotalBedrooms, this.Bathrooms, this.Age, this.Exclusive,
                this.StartDate, this.EndDate, this.TotalFloor, this.FamilyRoom, this.MasterBedRooms, this.Parkings,
                this.RentPrice, this.SalePrice, this.BldChargesPerMonth, this.AdditionalInformation,
                this.Web_GuideDescription, this.Active, this.Pending, this.Closed, this.Zone, this.ZoneNbr, this.ZoningDescription,
                this.DriverRoom, this.MaidRoom, this.DiningRoom, this.Kitchen, this.MaidBathRoom,this.Generator,this.Furnished,
                this.AgentName, this.Department, this.Country, this.Features, this.MapLong, this.MapLat);
        }

        public DataTable GetHottestRentAreas()
        {
            return Data.GetHottestRentAreas();
        }

        public DataTable GetHottestSaleAreas()
        {
            return Data.GetHottestSaleAreas();
        }
        #endregion

        #region Internals
        private Property InitializeObject(DataRow dr)
        {
            try
            {
                Property retVal = null;
                if (dr != null)
                {
                    retVal = new Property();
                    retVal.Active = dr["Active"] == DBNull.Value ? false : Convert.ToBoolean(dr["Active"]);
                    retVal.AdditionalInformation = dr["AdditionalInformation"].ToString();
                    retVal.Age = Convert.ToInt32(dr["Age"]);
                    retVal.Bathrooms = Convert.ToInt32(dr["Bathrooms"]);
                    retVal.BldChargesPerMonth = Convert.ToInt32(dr["BldChargesPerMonth"]);
                    retVal.Closed = dr["Closed"] == DBNull.Value ? false : Convert.ToBoolean(dr["Closed"]);
                    retVal.District = dr["District"].ToString();
                    retVal.DriverRoom = Convert.ToInt32(dr["DriverRoom"]);
                    retVal.EndDate = Convert.ToDateTime(dr["EndDate"]);
                    retVal.Exclusive = Convert.ToBoolean(dr["Exclusive"]);
                    retVal.FamilyRoom = Convert.ToInt32(dr["FamilyRoom"]);
                    retVal.Floor = Convert.ToInt32(dr["Floor"]);
                    retVal.MaidRoom = Convert.ToInt32(dr["MaidRoom"]);
                    retVal.MasterBedRooms = Convert.ToInt32(dr["MasterBedRooms"]);
                    retVal.Neighborhood = dr["Neighborhood"].ToString();
                    retVal.Parkings = Convert.ToInt32(dr["Parkings"]);
                    retVal.Pending = dr["Pending"] == DBNull.Value ? false : Convert.ToBoolean(dr["Pending"]);
                    retVal.PRL = dr["PRL"].ToString();
                    retVal.PropertyFor = dr["PropertyFor"].ToString();
                    retVal.PropertyType = dr["PropertyType"].ToString();
                    retVal.Qadaa = dr["Qadaa"].ToString();
                    retVal.Quality = dr["Quality"].ToString();
                    retVal.Receptions = Convert.ToInt32(dr["Receptions"]);
                    retVal.RentPrice = Convert.ToInt32(dr["RentPrice"]);
                    retVal.SalePrice = Convert.ToInt32(dr["SalePrice"]);
                    retVal.Size = Convert.ToInt32(dr["Size"]);
                    retVal.StartDate = Convert.ToDateTime(dr["StartDate"]);
                    retVal.TotalBedrooms = Convert.ToInt32(dr["TotalBedrooms"]);
                    retVal.TotalFloor = Convert.ToInt32(dr["TotalFloor"]);
                    retVal.Web_GuideDescription = dr["Web_GuideDescription"].ToString();
                    retVal.Zone = dr["Zone"].ToString();
                    retVal.ZoneNbr = dr["ZoneNbr"].ToString();
                    retVal.ZoningDescription = dr["ZoningDescription"].ToString();
                    retVal.TopImageId = dr["TopImageId"] != DBNull.Value ? new Guid(dr["TopImageId"].ToString()) : Guid.Empty;




                    retVal.DiningRoom = dr["DiningRoom"] == DBNull.Value ? 0 : Convert.ToInt32(dr["DiningRoom"]);
                    retVal.Kitchen = dr["Kitchen"] == DBNull.Value ? 0 : Convert.ToInt32(dr["Kitchen"]);
                    retVal.MaidBathRoom = dr["MaidBathRoom"] == DBNull.Value ? 0 : Convert.ToInt32(dr["MaidBathRoom"]);                    
                    retVal.Generator = dr["Generator"] == DBNull.Value ? false : Convert.ToBoolean(dr["Generator"]);
                    retVal.Furnished = dr["Furnished"] == DBNull.Value ? false : Convert.ToBoolean(dr["Furnished"]);
                    retVal.AgentName = dr["AgentName"].ToString();
                    retVal.Department = dr["Department"].ToString();
                    retVal.Country = dr["Country"].ToString();
                    retVal.Features = dr["Features"].ToString();
                    retVal.MapLong = dr["MapLong"].ToString();
                    retVal.MapLat = dr["MapLat"].ToString();
                }
                return retVal;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private PropertyCollection InitializeCollection(DataTable dt)
        {
            PropertyCollection retVal = null;
            if (dt != null && dt.Columns.Count > 0)
            {
                retVal = new PropertyCollection();
                foreach (DataRow row in dt.Rows)
                {
                    Property item = InitializeObject(row);
                    retVal.Add(item);
                }
            }
            return retVal;
        }
        #endregion
    }

    [Serializable]
    public class PropertyCollection : List<Property>
    { 
    }
}
