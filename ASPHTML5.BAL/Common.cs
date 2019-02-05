using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Diagnostics;
using System.Configuration;
using System.IO;

namespace ASPHTML5.BAL
{
    public class Common
    {
        #region Variables
        #endregion

        #region Properties
        #endregion

        #region ctor
        #endregion

        #region Methods
        public static void LogEvent(string message, EventLogEntryType entryType)
        {
            string sourceName = "ASPHTML5Log";
            if (!EventLog.SourceExists(sourceName))
            {
                EventLog.CreateEventSource(new EventSourceCreationData(sourceName, "Sodeco Gestion"));
            }
            EventLog.WriteEntry(sourceName, message, entryType);
        }

        //public static string GetSettings(string key)
        //{
        //    return ConfigurationManager.AppSettings[key];
        //}

        public static void SendEmail(string[] emailTo, string[] emailCc, string subject, string body, string AttachementfileName = "", Stream Attachement = null)
        {
            try
            {
                MailMessage message = new MailMessage();
                PopulateMailAddressCollection(message.To, emailTo);
                PopulateMailAddressCollection(message.CC, emailCc);
                message.From = new MailAddress(MiscActivity.GetSettings("EmailFrom").ToString());
                message.Subject = subject;
                message.Body = body;
                message.IsBodyHtml = true;
                if (Attachement != null)
                    message.Attachments.Add(new System.Net.Mail.Attachment(Attachement, AttachementfileName));
                SmtpClient smtp = new SmtpClient(MiscActivity.GetSettings("SmtpClient").ToString());
                smtp.Port = Convert.ToInt32(MiscActivity.GetSettings("SmtpPort").ToString());
                smtp.Send(message);
               
            }
            catch (Exception ex)
            {
                //Common.LogEvent(ex.ToString(), EventLogEntryType.Error);
                throw ex;
            }
        }

        #endregion

        #region Internals
        private static void PopulateMailAddressCollection(MailAddressCollection addresses, string[] addressesArr)
        {
            if (addressesArr != null)
            {
                Array.ForEach<string>(addressesArr, delegate(string address)
                {
                    addresses.Add(new MailAddress(address));
                });
            }
        }
        #endregion
    }
}
