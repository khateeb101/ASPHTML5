using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPHTML5.BAL;
using System.IO;

namespace ASPHTML5.Web
{
    public partial class ImageViewer : System.Web.UI.Page
    {
        public bool ThumbnailCallback()
        {
            return true;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Guid id = Guid.Empty;
                Guid newsid = Guid.Empty;
                if (!String.IsNullOrEmpty(Request.Params["ID"]))
                {
                    id = new Guid(Request.Params["ID"]);
                }
                else if (Request["newsletterid"] != null)
                {
                    if (!String.IsNullOrEmpty(Request.Params["newsletterid"]))
                        newsid = new Guid(Request.Params["newsletterid"]);
                    Newsletter imageNews = new Newsletter();

                    imageNews = Newsletter.Load(newsid);
                    Response.ContentType = "image/jpeg";
                    if (imageNews != null && imageNews.Image != null)
                    {
                        MemoryStream ms = new MemoryStream(imageNews.Image);
                        // create an image object, using the filename we just retrieved
                        System.Drawing.Image imageOriginal = System.Drawing.Image.FromStream(ms);

                        // create the actual thumbnail image
                        System.Drawing.Image thumbnailImage = imageOriginal.GetThumbnailImage(171, 116, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);

                        // make a memory stream to work with the image bytes
                        MemoryStream imageStream = new MemoryStream();

                        // put the image into the memory stream
                        thumbnailImage.Save(imageStream, System.Drawing.Imaging.ImageFormat.Jpeg);

                        // make byte array the same size as the image
                        byte[] imageContent = new Byte[imageStream.Length];

                        // rewind the memory stream
                        imageStream.Position = 0;

                        // load the byte array with the image
                        imageStream.Read(imageContent, 0, (int)imageStream.Length);

                        // return byte array to caller with image type
                        Response.ContentType = "image/jpeg";
                        Response.BinaryWrite(imageContent);

                        //Response.BinaryWrite(img.Thumbnail);
                        ms.Dispose();
                        imageStream.Dispose();
                    }
                    else
                    {
                        Response.WriteFile("~/images/EmptyImage.png");
                    }
                }
                PropertyImage image = new PropertyImage();
                image.Id = id;
                if (Request["banner"] != null)
                {
                    image = image.GetByIdbanner();
                }
                else
                {

                    image = image.GetById();
                }
                Response.ContentType = "image/jpeg";
                if (image == null)
                {
                    Response.WriteFile("~/images/EmptyImage.png");
                }
                //else if (string.IsNullOrEmpty(Request["big"]))
                //{
                //    MemoryStream ms = new MemoryStream(image.Image);
                //    // create an image object, using the filename we just retrieved
                //    System.Drawing.Image imageOriginal = System.Drawing.Image.FromStream(ms);

                //    // create the actual thumbnail image
                //    System.Drawing.Image thumbnailImage = imageOriginal.GetThumbnailImage(171, 116, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);

                //    // make a memory stream to work with the image bytes
                //    MemoryStream imageStream = new MemoryStream();

                //    // put the image into the memory stream
                //    thumbnailImage.Save(imageStream, System.Drawing.Imaging.ImageFormat.Jpeg);

                //    // make byte array the same size as the image
                //    byte[] imageContent = new Byte[imageStream.Length];

                //    // rewind the memory stream
                //    imageStream.Position = 0;

                //    // load the byte array with the image
                //    imageStream.Read(imageContent, 0, (int)imageStream.Length);

                //    // return byte array to caller with image type
                //    Response.ContentType = "image/jpeg";
                //    Response.BinaryWrite(imageContent);

                //    //Response.BinaryWrite(img.Thumbnail);
                //    ms.Dispose();
                //    imageStream.Dispose();

                //}
                else if (!string.IsNullOrEmpty(Request["med"]))
                {
                    //GetFullImage(image);
                    //return;
                    MemoryStream ms = new MemoryStream(image.Image);
                    // create an image object, using the filename we just retrieved
                    System.Drawing.Image imageOriginal = System.Drawing.Image.FromStream(ms);

                    // create the actual thumbnail image
                    System.Drawing.Image thumbnailImage = imageOriginal.GetThumbnailImage(600, 404, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);

                    // make a memory stream to work with the image bytes
                    MemoryStream imageStream = new MemoryStream();

                    // put the image into the memory stream
                    thumbnailImage.Save(imageStream, System.Drawing.Imaging.ImageFormat.Jpeg);

                    // make byte array the same size as the image
                    byte[] imageContent = new Byte[imageStream.Length];

                    // rewind the memory stream
                    imageStream.Position = 0;

                    // load the byte array with the image
                    imageStream.Read(imageContent, 0, (int)imageStream.Length);

                    // return byte array to caller with image type
                    Response.ContentType = "image/jpeg";
                    Response.BinaryWrite(imageContent);

                    //Response.BinaryWrite(img.Thumbnail);
                    ms.Dispose();
                    imageStream.Dispose();

                }
                else if (!string.IsNullOrEmpty(Request["small"]))
                {
                    //GetFullImage(image);
                    //return;
                    MemoryStream ms = new MemoryStream(image.Image);
                    // create an image object, using the filename we just retrieved
                    System.Drawing.Image imageOriginal = System.Drawing.Image.FromStream(ms);

                    // create the actual thumbnail image
                    System.Drawing.Image thumbnailImage = imageOriginal.GetThumbnailImage(396, 276, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);

                    // make a memory stream to work with the image bytes
                    MemoryStream imageStream = new MemoryStream();

                    // put the image into the memory stream
                    thumbnailImage.Save(imageStream, System.Drawing.Imaging.ImageFormat.Jpeg);

                    // make byte array the same size as the image
                    byte[] imageContent = new Byte[imageStream.Length];

                    // rewind the memory stream
                    imageStream.Position = 0;

                    // load the byte array with the image
                    imageStream.Read(imageContent, 0, (int)imageStream.Length);

                    // return byte array to caller with image type
                    Response.ContentType = "image/jpeg";
                    Response.BinaryWrite(imageContent);

                    //Response.BinaryWrite(img.Thumbnail);
                    ms.Dispose();
                    imageStream.Dispose();

                }
                else
                {
                    GetFullImage(image);
                }
                if (Request["slide"] != null)
                {
                    GetFullImage(image);
                }
            }
        }

        private void GetFullImage(PropertyImage image)
        {
            MemoryStream ms = new MemoryStream(image.Image);
            // create an image object, using the filename we just retrieved
            System.Drawing.Image imageOriginal = System.Drawing.Image.FromStream(ms);

            int originalWidth = imageOriginal.Width;
            int originalHeight = imageOriginal.Height;

            int proportionHeight = int.Parse(decimal.Round((decimal)(800M * decimal.Parse(originalHeight.ToString()) / decimal.Parse(originalWidth.ToString())), 0).ToString());

            // create the actual thumbnail image
            System.Drawing.Image thumbnailImage = imageOriginal.GetThumbnailImage(800, proportionHeight, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);

            // make a memory stream to work with the image bytes
            MemoryStream imageStream = new MemoryStream();

            // put the image into the memory stream
            thumbnailImage.Save(imageStream, System.Drawing.Imaging.ImageFormat.Jpeg);

            // make byte array the same size as the image
            byte[] imageContent = new Byte[imageStream.Length];

            // rewind the memory stream
            imageStream.Position = 0;

            // load the byte array with the image
            imageStream.Read(imageContent, 0, (int)imageStream.Length);

            // return byte array to caller with image type
            Response.ContentType = "image/jpeg";
            Response.BinaryWrite(imageContent);

            //Response.BinaryWrite(img.Thumbnail);
            ms.Dispose();
            imageStream.Dispose();
        }
    }
}
