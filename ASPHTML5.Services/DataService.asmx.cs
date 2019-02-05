using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using ASPHTML5.BAL;

namespace ASPHTML5.Services
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
    [WebService(Namespace = "http://inatco.net/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class DataService : System.Web.Services.WebService
    {
        [WebMethod]
        public void SaveData(Property item, List<PropertyImage> imageCol)
        {
            item.AddUpdate();
            PropertyImage img = new PropertyImage();
            img.PRL = item.PRL;
            img.DeleteByPRL();
            img.Add(imageCol);
        }

        [WebMethod]
        public void DeleteData(string prl)
        {
            PropertyImage img = new PropertyImage();
            img.PRL = prl;
            img.DeleteByPRL();
            Property property = new Property();
            property.DeleteByPRL(prl);
        }

        [WebMethod]
        public void AddDictionary(Dictionary dict)
        {
            if (dict != null)
                dict.AddDictionary();
        }
         
        [WebMethod]
        public void AddDictionaryCollection(DictionaryCollection col)
        {
            Dictionary dict = new Dictionary();
            dict.AddDictionaryCollection(col);
        }

        [WebMethod]
        public Dictionary GetDictionary(string id)
        {
            Dictionary dict = new Dictionary();
            dict.Id = id;
            return dict.GetById();
        }

        [WebMethod]
        public void AddLogin(Login login)
        {
            if (login != null)
                login.AddLogin();
        }

        [WebMethod]
        public void UpdateLogin(Login login)
        {
            if (login != null)
                login.UpdateLogin();
        }
        [WebMethod]
        public LoginCollection GetLogins()
        {
            LoginCollection logins = new LoginCollection();
            return logins;
        }
        [WebMethod]
        public void DeleteLogin(Guid ContactID)
        {
            Login login = new Login();
            login.ContactID = ContactID;
            login.DeleteLogin();
        }
        [WebMethod]
        public Login GetLogin(Guid ContactId)
        {
            Login login = new Login();
            login.ContactID = ContactId;
            return login.GetByID();
        }
        [WebMethod]
        public void AddShowing(Showing showing)
        {
            if (showing != null)
                showing.AddShowing();
        }

        [WebMethod]
        public ShowingCollection GetShowings()
        {
            ShowingCollection showings = new ShowingCollection();
            return showings;
        }

        [WebMethod]
        public void DeleteShowing(Guid ShowingID)
        {
            Showing showing = new Showing();
            showing.ShowingID = ShowingID;
            showing.DeleteShowing();
        }

       
    }
}
