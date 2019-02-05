using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Text;
using System.Data;
using System.Xml;

namespace ASPHTML5.Web
{
    public partial class Mortages : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgCalculate_Click(object sender, ImageClickEventArgs e)
        {
            try
            {


                //string retVal = "";
                //if (!String.IsNullOrEmpty(txtIncome.Value))
                //{
                //    int income = 0;
                //    if (Int32.TryParse(txtIncome.Value, out income))
                //    {
                //        retVal = String.Concat(this.GetLocalResourceObject("Calculate.Part1").ToString(), txtIncome.Value, this.GetLocalResourceObject("Calculate.Part2").ToString(), (Convert.ToInt16(ddlMonthNumber.SelectedValue) * 12 * (income / 3)).ToString("N2"), this.GetLocalResourceObject("Calculate.Part3").ToString(), ddlMonthNumber.SelectedValue, this.GetLocalResourceObject("Calculate.Part4").ToString());
                //    }
                //    else
                //    {
                //        retVal = this.GetLocalResourceObject("Error.InvalidIncome").ToString();
                //    }
                //}
                //else
                //{
                //    retVal = this.GetLocalResourceObject("Error.InvalidIncome").ToString();
                //}
                //litCalc.Visible = true;
                //litCalc.Text = retVal;


                // Create a request using a URL that can receive a post. 
                WebRequest request = WebRequest.Create("http://www.eblf.com/mobile-app/xmlHousingLoanUSD.aspx");
                // Set the Method property of the request to POST.
                request.Method = "POST";
                // Create POST data and convert it to a byte array.
                string postData = "purchPrice=" + txtPurchasingPrice.Value + "&downPay=" + txtSelfFinance.Value +
                    "&grace1=" + ddlGraceMonthInterest.SelectedValue + "&grace2=" + ddlPrincipal.SelectedValue +
                    "&loanPeriod=" + txtLoanPeriod.Value;
                byte[] byteArray = Encoding.UTF8.GetBytes(postData);
                // Set the ContentType property of the WebRequest.
                request.ContentType = "application/x-www-form-urlencoded";
                // Set the ContentLength property of the WebRequest.
                request.ContentLength = byteArray.Length;
                // Get the request stream.
                Stream dataStream = request.GetRequestStream();
                // Write the data to the request stream.
                dataStream.Write(byteArray, 0, byteArray.Length);
                // Close the Stream object.
                dataStream.Close();
                // Get the response.
                WebResponse response = request.GetResponse();
                // Display the status.
                //Console.WriteLine(((HttpWebResponse)response).StatusDescription);
                // Get the stream containing content returned by the server.
                dataStream = response.GetResponseStream();
                // Open the stream using a StreamReader for easy access.
                StreamReader reader = new StreamReader(dataStream);
                // Read the content.
                
                string responseFromServer = reader.ReadToEnd();
                
                
                // Display the content.
                //********Console.WriteLine(responseFromServer);

                XmlDocument doc = new XmlDocument();
                doc.LoadXml(responseFromServer.Replace("\\r","").Replace("\\",""));

                

                //DataSet ds = new DataSet();
                //ds.ReadXml(responseFromServer);
                //ds.ReadXml(reader);
                // Clean up the streams.
                reader.Close();
                dataStream.Close();
                response.Close();

                List<result> ls = new List<result>();

                if (doc != null && doc.ChildNodes[1] != null &&  
                    doc.ChildNodes[1].ChildNodes[4] != null && doc.ChildNodes[1].ChildNodes[4].SelectNodes("lst").Count > 0)
                {
                    foreach (XmlNode item in doc.ChildNodes[1].ChildNodes[4].SelectNodes("lst"))
                    {
                        result r = new result();

                        r.Description = item.ChildNodes[0].InnerText;
                        r.Amount = int.Parse(item.ChildNodes[1].InnerText.Replace("USD ", "").Replace(",",""));
                        ls.Add(r);
                    }
                    
                    
                }

                tbl2.Visible = true;
                tbl1.Visible = false;
                ltError.Visible = false;
                Table1.Visible = true;
                //lblInstallement6Month.Text = string.Format("{0:###,###,##0}",0);
                //lblInstallementremainingYear.Text = string.Format("{0:###,###,##0}", 0);
                //lblInstallement12secondYear.Text = string.Format("{0:###,###,##0}", 0);
                //lblInstallementremainingperiod.Text = string.Format("{0:###,###,##0}", 0);

                rpt.DataSource = ls;
                rpt.DataBind();


            }
            catch (Exception)
            {

                ltError.Visible = true;
            }
        }

        protected void imgCalculate1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Mortages.aspx");
            tbl1.Visible = true;
            tbl2.Visible = false;
            ltError.Visible = false;
        }
    }

    public class result
    {
        public int Amount { get; set; }
        public string Description { get; set; }
    }
}
