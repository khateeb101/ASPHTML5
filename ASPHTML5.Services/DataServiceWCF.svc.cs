using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ASPHTML5.BAL;

namespace ASPHTML5.Services
{
    // NOTE: If you change the class name "DataServiceWCF" here, you must also update the reference to "DataServiceWCF" in Web.config.
    public class DataServiceWCF : IDataServiceWCF
    {
        public void SaveData(Property item, PropertyImageCollection imageCol)
        {
            item.AddUpdate();
            PropertyImage img = new PropertyImage();
            img.PRL = item.PRL;
            img.DeleteByPRL();
            img.Add(imageCol);
        }

        public void DeleteData(string prl)
        {
            PropertyImage img = new PropertyImage();
            img.PRL = prl;
            img.DeleteByPRL();
            Property property = new Property();
            property.DeleteByPRL(prl);
        }

        public void AddDictionary(Dictionary dict)
        {
            if (dict != null)
                dict.AddDictionary();
        }

        public void AddDictionaryCollection(DictionaryCollection col)
        {
            Dictionary dict = new Dictionary();
            dict.AddDictionaryCollection(col);
        }

        public Dictionary GetDictionary(string id)
        {
            Dictionary dict = new Dictionary();
            dict.Id = id;
            return dict.GetById();
        }
    }
}
