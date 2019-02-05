using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ASPHTML5.BAL;

namespace ASPHTML5.Services
{
    // NOTE: If you change the interface name "IDataServiceWCF" here, you must also update the reference to "IDataServiceWCF" in Web.config.
    [ServiceContract]
    public interface IDataServiceWCF
    {
        [OperationContract]
        Dictionary GetDictionary(string id);

        [OperationContract]
        void AddDictionaryCollection(DictionaryCollection col);

        [OperationContract]
        void AddDictionary(Dictionary dict);

        [OperationContract]
        void DeleteData(string prl);

        [OperationContract]
        void SaveData(Property item, PropertyImageCollection imageCol);
    }
}
