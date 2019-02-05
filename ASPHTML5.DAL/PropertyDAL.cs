using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ASPHTML5.DAL.Common;
using System.Data;

namespace ASPHTML5.DAL
{
    public class PropertyDAL : BaseDal
    {
        #region Methods
        public DataTable GetByPropertyFor(string propertyFor)
        {
            return base.GetDataTable("vwProperty_GetByPropertyFor", propertyFor);
        }

        public DataTable GetBySearch(string whereClause)
        {
            return base.GetDataTable("vwProperty_GetBySearch", whereClause);
        }

        public DataTable GetByLatest(int daysCount)
        {
            return base.GetDataTable("vwProperty_GetByLatest", daysCount);
        }

        public DataRow GetByPRL(string prl)
        {
            DataRow retVal = null;
            DataTable dt = base.GetDataTable("vwProperty_GetByPRL", prl);
            if (dt != null && dt.Rows.Count > 0)
                retVal = dt.Rows[0];
            return retVal;
        }        

        public void AddUpdate(string prl, string qadaa, string district, string propertyFor,
            string propertyType, string neighborhood, string quality, int size, int floor, int receptions,
            int totalBedrooms, int bathrooms, int age, bool exclusive, DateTime startDate, DateTime endDate,
            int totalFloor, int familyRoom, int masterBedRooms, int parkings, int rentPrice, int salePrice,
            int bldChargesPerMonth, string additionInformation, string web_GuideDescription,
            bool active, bool pending, bool closed, string zone, string zoneNbr, string zoningDescription,
            int driverRoom, int maidRoom,  int DiningRoom, int Kitchen, int MaidBathRoom, bool Generator, 
         bool Furnished, string AgentName, string Department, string Country, string Features, string MapLong, string MapLat )
        {
            base.ExecNonQuery("vwProperty_AddUpdate", prl, qadaa, district, propertyFor,
            propertyType, neighborhood, quality, size, floor, receptions,
            totalBedrooms, bathrooms, age, exclusive, startDate, endDate,
            totalFloor, familyRoom, masterBedRooms, parkings, rentPrice, salePrice,
            bldChargesPerMonth, additionInformation, web_GuideDescription,
            active, pending, closed, zone, zoneNbr, zoningDescription,
            driverRoom, maidRoom, DiningRoom, Kitchen, MaidBathRoom, 
                AgentName, Department, Country, Features, MapLong, MapLat);
        }

        public void DeleteByPRL(string prl)
        {
            base.ExecNonQuery("vwProperty_DeleteByPRL", prl);
        }

        public DataTable GetHottestRentAreas()
        {
            return base.GetDataTable("vwProperty_GetHottestRentArea");
        }

        public DataTable GetHottestSaleAreas()
        {
            return base.GetDataTable("vwProperty_GetHottestSaleArea");
        }
        #endregion

    }
}
