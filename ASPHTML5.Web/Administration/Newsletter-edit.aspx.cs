using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPHTML5.Web
{
    public partial class Newsletter_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["id"] != null)
                {
                    BAL.Newsletter n = BAL.Newsletter.Load(Guid.Parse(Request["id"]));
                    if (n != null)
                    {
                        txtTitle.Text = n.Name;
                        txtTitleFr.Text = n.Name_fr;
                        txtTitleAr.Text = n.Name_ar;
                        chkShow.Checked = n.Show_website;
                    }
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            BAL.Newsletter n = new BAL.Newsletter();
            if (Request["id"] != null)
            {
                n.id = Guid.Parse(Request["id"]);
            }
            else
            {
                n.id = Guid.NewGuid();
            }
            n.Name = txtTitle.Text;
            n.Name_fr = txtTitleFr.Text;
            n.Name_ar = txtTitleAr.Text;
            n.Show_website = chkShow.Checked;
            if (uplImage.HasFile)
            {
                try
                {
                    if (uplImage.FileName.Split('.')[1].ToLower() == "jpeg" || uplImage.FileName.Split('.')[1].ToLower() == "jpg" || uplImage.FileName.Split('.')[1].ToLower() == "png" || uplImage.FileName.Split('.')[1].ToLower() == "gif")
                    {                       
                        n.Image = uplImage.FileBytes;
                    }
                    else
                    {
                        lblUploadImage.Text = "Upload status: Only JPEG/JPG/PNG/GIF files are accepted!";
                    }
                }
                catch (Exception ex)
                {
                    lblUploadImage.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            if (uplPDF.HasFile)
            {
                try
                {
                    if (uplPDF.FileName.Split('.')[1].ToLower() == "pdf" || uplImage.FileName.Split('.')[1].ToLower() == "PDF")
                    {
                        n.PDF = uplPDF.FileBytes;
                    }
                    else
                    {
                        lblUploadPDF.Text = "Upload status: Only PDF files are accepted!";
                    }
                }
                catch (Exception ex)
                {
                    lblUploadPDF.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }           
            n.Save();
            Response.Redirect("~/Administration/Newsletters.aspx");
        }
    }
}