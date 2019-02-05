using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.Services;
using ASPHTML5.BAL;
using System.IO;

namespace ASPHTML5.Web
{
    public partial class TestWebService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AddDictionaryCollection();
        }

        public void AddImage()
        {
            DataService service = new DataService();
            Property item = new Property();
            item.Active = true;
            item.AdditionalInformation = "additional info";
            item.Age = 0;
            item.Bathrooms = 3;
            item.BldChargesPerMonth = 120;
            item.Closed = false;
            item.District = "Mount Lebanon";
            item.DriverRoom = 0;
            item.EndDate = DateTime.Now.AddMonths(3);
            item.Exclusive = false;
            item.FamilyRoom = 1;
            item.Floor = 2;
            item.MaidRoom = 0;
            item.MasterBedRooms = 1;
            item.Neighborhood = "Neighborhoos";
            item.Parkings = 2;
            item.Pending = false;
            item.PRL = "SR10";
            item.PropertyFor = "Buy";
            item.PropertyType = "Apartment";
            item.Qadaa = "Aley";
            item.Quality = "Good";
            item.Receptions = 0;
            item.RentPrice = 0;
            item.SalePrice = 200000;
            item.Size = 160;
            item.StartDate = DateTime.Now.Subtract(new TimeSpan(60, 0, 0, 0));
            item.TotalBedrooms = 3;
            item.TotalFloor = 4;
            item.Web_GuideDescription = "Web Guide Description";
            item.Zone = "B";
            item.ZoneNbr = "B26";
            item.ZoningDescription = "Zoning Description";
            PropertyImage img1 = new PropertyImage();
            img1.Description = "Description Image 1";
            img1.Extension = ".jpg";
            img1.Id = Guid.NewGuid();
            img1.Image = File.ReadAllBytes(@"C:\Users\ztaha\Desktop\12.jpg");
            img1.PRL = "SR10";
            PropertyImage img2 = new PropertyImage();
            img2.Description = "Description Image 1";
            img2.Extension = ".jpg";
            img2.Id = Guid.NewGuid();
            img2.Image = File.ReadAllBytes(@"C:\Users\ztaha\Desktop\22.jpg");
            img2.PRL = "SR10";
            PropertyImage img3 = new PropertyImage();
            img3.Description = "Description Image 1";
            img3.Extension = ".jpg";
            img3.Id = Guid.NewGuid();
            img3.Image = File.ReadAllBytes(@"C:\Users\ztaha\Desktop\3.jpg");
            img3.PRL = "SR10";
            PropertyImage img4 = new PropertyImage();
            img4.Description = "Description Image 1";
            img4.Extension = ".jpg";
            img4.Id = Guid.NewGuid();
            img4.Image = File.ReadAllBytes(@"C:\Users\ztaha\Desktop\4.jpg");
            img4.PRL = "SR10";
            img4.IsFirstImage = true;
            PropertyImage img5 = new PropertyImage();
            img5.Description = "Description Image 1";
            img5.Extension = ".jpg";
            img5.Id = Guid.NewGuid();
            img5.Image = File.ReadAllBytes(@"C:\Users\ztaha\Desktop\52.jpg");
            img5.PRL = "SR10";
            PropertyImageCollection col = new PropertyImageCollection();
            col.Add(img1);
            col.Add(img2);
            col.Add(img3);
            col.Add(img4);
            col.Add(img5);
            service.SaveData(item, col);
        }

        public void AddDictionaryCollection()
        {
            DataService data = new DataService();
            DictionaryCollection col = new DictionaryCollection();
            Dictionary dict = new Dictionary();
            dict.Id = "key3";
            dict.English = "eoasdde";
            dict.French = "asdasdasd";
            dict.Arabic = "sikasdasd";
            col.Add(dict);
            Dictionary dict2 = new Dictionary();
            dict2.Id = "key4";
            dict2.English = "eoasdde";
            //dict2.French = "";
            dict2.Arabic = "sikasdasd";
            col.Add(dict2);
            dict.AddDictionaryCollection(col);
        }
    }
}
