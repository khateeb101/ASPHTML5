using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASPHTML5.BAL
{
    public static class EmailTemplates
    {
        #region ContactUsEmail
        public static string ContactUsEmailSodeco =
            @"<body style='font: 18px Arial, Helvetica, sans-serif;
	                        
	                        line-height:26px;
	                        letter-spacing:.21em;Text-Align:Center''>
                
                        <table border='0' cellspacing='0' cellpadding='0'>
							<tr>
								<td colspan='2' style='Text-Align:Center;color: #004F7F;'>
								<b>Sodeco Gestion - Contact Us Form Submitted</b>
								</td>
							</tr>
							<tr>
								<td colspan='2'><hr/></td>
							</tr>
							<tr>
								<td colspan='2' bgcolor='#004f7f' style='width:500px;color:#ffffff; Text-Align:Center'>
								<b>Property</b>
								</td>
							</tr>
							<tr>
								<td colspan='2'>
								Reference : #prl#
								</td>
							</tr>
							<tr>	
								<td style='width:200px;'>
								Type : #type#
								</td>
								<td style='width:300px;'>
								District : #district#
								</td>
							</tr>
							<tr>	
								<td>
								Surface : #surface#m2
								</td>
								<td>
								Price : #price#, #propertyfor#
								</td>
							</tr>
							<tr>
								<td>
								Description : 
								</td>
								<td>
								#description#
								</td>
							</tr>
							<tr>
								<td colspan='2'>
									</br>
								</td>
							</tr>
							<tr>
								<td colspan='2' bgcolor='#004f7f' style='color:#ffffff; Text-Align:Center'>
								<b>Client Information</b>
								</td>
							</tr>
							<tr>
								<td>
								Name : 
								</td>
								<td>
								#name#
								</td>
							</tr>
							<tr>	
								<td>
								Email : 
								</td>
								<td>
								<a href='mailto:#email#'>#email#</a>
								</td>
							</tr>
							<tr>	
								<td>
								Phone : 
								</td>
								<td>
								#phone#
								</td>
							</tr>
							<tr>
								<td>
								Comments : 
								</td>
								<td>
								#comments#
								</td>
							</tr>
						</table>
            </body>";
        public static string ContactUsEmail2 =
          @"<body >
                <table border='0' cellspacing='0' cellpadding='2' width='100%'>
                    <tr>
                        <td style='font: 18px Arial, Helvetica, sans-serif;
	                        color: #004F7F;
	                        line-height:26px;
	                        letter-spacing:.21em;'>
                            Sodeco Gestion - Contact Us Form Submitted
                        </td>
                    </tr>
   			        <tr>
                        <td  bgcolor='#004F7F'></td>
                    </tr>
                    <tr>
                        <td style='font:11px Arial, Helvetica, sans-serif;color:#637374; line-height:20px; margin-

top:0px'>
                        <p>Dear Administrator,</p>
<p>
Please find below Contact Us form submitted. </p>
<p><b><u>Submitter Details</u></b></p>
<b>Name: </b> #FirstName#<br/>
<b>Phone: </b> #Phone#<br/>
<b>Email: </b> #Email#<br/><br/>
<p><b><u>Property Details</u></b></p>
<b>Condition: </b> #Condition#<br/>
<b>Address: </b> #Address#<br/>
<b>More details about your property: </b> #PropertyDetails#<br/>
</p>
<p>
Sincerely, <br/>
Sodeco Gestion 
</p>
                      </td>
		            </tr>
                </table>	
            </body>";
        public static string ContactUsEmail =
          @"<body >
                <table border='0' cellspacing='0' cellpadding='2' width='100%'>
                    <tr>
                        <td style='font: 18px Arial, Helvetica, sans-serif;
	                        color: #004F7F;
	                        line-height:26px;
	                        letter-spacing:.21em;'>
                            Sodeco Gestion - Contact Us Form Submitted
                        </td>
                    </tr>
   			        <tr>
                        <td  bgcolor='#004F7F'></td>
                    </tr>
                    <tr>
                        <td style='font:11px Arial, Helvetica, sans-serif;color:#637374; line-height:20px; margin-

top:0px'>
                        <p>Dear Administrator,</p>
<p>
Please find below Contact Us form submitted. </p>
<p><b><u>Submitter Details</u></b></p>
<p><b>Title: </b> #Title#<br/>
<b>First Name: </b> #FirstName#<br/>
<b>Surname: </b> #SurName#<br/>
<b>Phone: </b> #Phone#<br/>
<b>Email: </b> #Email#<br/><br/>
<p><b><u>Property Details</u></b></p>
<b>Condition: </b> #Condition#<br/>
<b>Address: </b> #Address#<br/>
<b>City\Town: </b> #City#<br/>
<b>More details about your property: </b> #PropertyDetails#<br/>
</p>
<p>
Sincerely, <br/>
Sodeco Gestion 
</p>
                      </td>
		            </tr>
                </table>	
            </body>";
        #endregion

        #region FeedbackEmail
        public static string FeedbackEmail =
          @"<body >
                <table border='0' cellspacing='0' cellpadding='2' width='100%'>
                    <tr>
                        <td style='font: 18px Arial, Helvetica, sans-serif;
	                        color: #004F7F;
	                        line-height:26px;
	                        letter-spacing:.21em;'>
                            Sodeco Gestion - Feedback Form Submitted
                        </td>
                    </tr>
   			        <tr>
                        <td  bgcolor='#004F7F'></td>
                    </tr>
                    <tr>
                        <td style='font:11px Arial, Helvetica, sans-serif;color:#637374; line-height:20px; margin-

top:0px'>
                        <p>Dear Administrator,</p>
<p>
Please find below Contact Us form submitted. </p>
<p><b><u>Submitter Details</u></b></p>
<p><b>Title: </b> #Title#<br/>
<b>First Name: </b> #FirstName#<br/>
<b>Surname: </b> #SurName#<br/>
<b>Phone: </b> #Phone#<br/>
<b>Email: </b> #Email#<br/><br/>
<p><b><u>Questionnaire:</u></b></p>
<b>Quality of relational: </b> #Q1#<br/>
<b>Quality of advice: </b> #Q2#<br/>
<b>Quality of the supplied information: </b> #Q3#<br/>
<b>Follow up of your file: </b> #Q4#<br/>
<b>Adequacy of the offer to your request: </b> #Q5#<br/>
<b>Overall satisfaction: </b> #Q6#<br/>
<b>1: Very satisfied	2: satisfied	3: dissatisfied		4: very dissatisfied</b></p>
<p><b><u>Open questions:</u></b></p>
<b>How did you hear of Sodeco Gestion sal? </b> #OpenQ1#<br/>
<b>Would you recommend us to your relations? </b> #OpenQ2#<br/>
<b>Would you use our services again? </b> #OpenQ3#<br/>
<b>Your comments: </b> #OpenQ4#<br/></p>
<p>
Sincerely, <br/>
Sodeco Gestion 
</p>
                      </td>
		            </tr>
                </table>	
            </body>";
        #endregion

        #region EvaluationRequestEmail2
        public static string EvaluationRequestEmail2 =
          @"<body >
                <table border='0' cellspacing='0' cellpadding='2' width='100%'>
                    <tr>
                        <td style='font: 18px Arial, Helvetica, sans-serif;
	                        color: #004F7F;
	                        line-height:26px;
	                        letter-spacing:.21em;'>
                            Sodeco Gestion - Evaluation Request Form Submitted
                        </td>
                    </tr>
   			        <tr>
                        <td  bgcolor='#004F7F'></td>
                    </tr>
                    <tr>
                        <td style='font:11px Arial, Helvetica, sans-serif;color:#637374; line-height:20px; margin-

top:0px'>
                        <p>Dear Administrator,</p>
<p>
Please find below Contact Us form submitted. </p>
<p><b><u>Submitter Details</u></b></p>
<b>Name: </b> #FirstName#<br/>
<b>Phone: </b> #Phone#<br/>
<b>Email: </b> #Email#<br/><br/>
<p><b><u>Property Details</u></b></p>
<b>Condition: </b> #Condition#<br/>
<b>Address: </b> #Address#<br/>
<b>More details about your property: </b> #PropertyDetails#<br/>
</p>
<p>
Sincerely, <br/>
Sodeco Gestion 
</p>
                      </td>
		            </tr>
                </table>	
            </body>";
        #endregion

        #region EvaluationRequestEmail
        public static string EvaluationRequestEmail =
          @"<body >
                <table border='0' cellspacing='0' cellpadding='2' width='100%'>
                    <tr>
                        <td style='font: 18px Arial, Helvetica, sans-serif;
	                        color: #004F7F;
	                        line-height:26px;
	                        letter-spacing:.21em;'>
                            Sodeco Gestion - Evaluation Request Form Submitted
                        </td>
                    </tr>
   			        <tr>
                        <td  bgcolor='#004F7F'></td>
                    </tr>
                    <tr>
                        <td style='font:11px Arial, Helvetica, sans-serif;color:#637374; line-height:20px; margin-

top:0px'>
                        <p>Dear Administrator,</p>
<p>
Please find below Contact Us form submitted. </p>
<p><b><u>Submitter Details</u></b></p>
<p><b>Title: </b> #Title#<br/>
<b>First Name: </b> #FirstName#<br/>
<b>Surname: </b> #SurName#<br/>
<b>Phone: </b> #Phone#<br/>
<b>Email: </b> #Email#<br/><br/>
<p><b><u>Property Details</u></b></p>
<b>Condition: </b> #Condition#<br/>
<b>Address: </b> #Address#<br/>
<b>City\Town: </b> #City#<br/>
<b>More details about your property: </b> #PropertyDetails#<br/>
</p>
<p>
Sincerely, <br/>
Sodeco Gestion 
</p>
                      </td>
		            </tr>
                </table>	
            </body>";
        #endregion

        #region NewsletterSubscribe
        public static string NewsletterSubscribe =
          @"<body >
                <table border='0' cellspacing='0' cellpadding='2' width='100%'>
                    <tr>
                        <td style='font: 18px Arial, Helvetica, sans-serif;
	                        color: #004F7F;
	                        line-height:26px;
	                        letter-spacing:.21em;'>
                            Sodeco Gestion - Newsletter Subscribtion Confirmed
                        </td>
                    </tr>
   			        <tr>
                        <td  bgcolor='#004F7F'></td>
                    </tr>
                    <tr>
                        <td style='font:11px Arial, Helvetica, sans-serif;color:#637374; line-height:20px; margin-

top:0px'>
                        <p>Dear User,</p>
<p>
You have been successfully subscribed to our newsletter. You can subscribe anytime by clicking on this <a href='#SubscribtionLink#'>link.</a> </p>
Sincerely, <br/>
Sodeco Gestion 
</p>
                      </td>
		            </tr>
                </table>	
            </body>";
        #endregion

        #region SendCVSubmittedNotificationEmail
        public static string SendCVSubmittedNotificationEmail =
          @"<body >
                <table border='0' cellspacing='0' cellpadding='2' width='100%'>
                    <tr>
                        <td style='font: 18px Arial, Helvetica, sans-serif;
	                        color: #004F7F;
	                        line-height:26px;
	                        letter-spacing:.21em;'>
                            Sodeco Gestion - Apply For Job Form
                        </td>
                    </tr>
   			        <tr>
                        <td  bgcolor='#004F7F'></td>
                    </tr>
                    <tr>
                        <td style='font:11px Arial, Helvetica, sans-serif;color:#637374; line-height:20px; margin-

top:0px'>
                        <p>Dear Administrator,</p>
<p>
Please find below Apply For Job form submitted. </p>
<p><b><u>Submitter Details</u></b></p>
<b>First Name: </b> #FirstName#<br/>
<b>Surname: </b> #SurName#<br/>
<b>Phone: </b> #Phone#<br/>
<b>Email: </b> #Email#<br/><br/>
<p><b><u>CV Details</u></b></p>
<b>Comments: </b> #Comments#<br/>
</p>
<p>
Sincerely, <br/>
Sodeco Gestion 
</p>
                      </td>
		            </tr>
                </table>	
            </body>";
        #endregion
    }
}
