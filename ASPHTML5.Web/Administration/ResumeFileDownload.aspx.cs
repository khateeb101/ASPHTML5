using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;

namespace ASPHTML5.Web
{
    public partial class ResumeFileDownload : AdminBasePage
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            JobCandidate resume = new JobCandidate();
            resume.Id = Convert.ToInt32(Request.Params["Id"]);
            resume = resume.GetById();
            if (resume != null && resume.CV != null)
            {
                Response.AddHeader("Content-Disposition", "attachment; filename=" + resume.CVName);
                Response.AddHeader("Content-Length", resume.CV.Length.ToString());
                Response.ContentType = ReturnExtension(resume.CVName.Substring(resume.CVName.LastIndexOf('.')).ToLower());
                Response.BinaryWrite(resume.CV);
                Response.Flush();
                Response.End();
            }
            else
            {
                Response.Flush();
                Response.End();
            }
        }

        private string ReturnExtension(string fileExtension)
        {
            switch (fileExtension)
            {
                case ".htm":
                case ".html":
                case ".log":
                    return "text/HTML";
                case ".txt":
                    return "text/plain";
                case ".doc":
                    return "application/ms-word";
                case ".tiff":
                case ".tif":
                    return "image/tiff";
                case ".asf":
                    return "video/x-ms-asf";
                case ".avi":
                    return "video/avi";
                case ".zip":
                    return "application/zip";
                case ".xls":
                case ".csv":
                    return "application/vnd.ms-excel";
                case ".gif":
                    return "image/gif";
                case ".jpg":
                case "jpeg":
                    return "image/jpeg";
                case ".bmp":
                    return "image/bmp";
                case ".wav":
                    return "audio/wav";
                case ".mp3":
                    return "audio/mpeg3";
                case ".mpg":
                case "mpeg":
                    return "video/mpeg";
                case ".rtf":
                    return "application/rtf";
                case ".asp":
                    return "text/asp";
                case ".pdf":
                    return "application/pdf";
                case ".fdf":
                    return "application/vnd.fdf";
                case ".ppt":
                    return "application/mspowerpoint";
                case ".dwg":
                    return "image/vnd.dwg";
                case ".msg":
                    return "application/msoutlook";
                case ".xml":
                case ".sdxl":
                    return "application/xml";
                case ".xdp":
                    return "application/vnd.adobe.xdp+xml";
                default:
                    return "application/octet-stream";
            }
        }
    }
}
