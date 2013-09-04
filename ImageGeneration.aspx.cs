using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

namespace Bryan_Test
{
    public partial class ImageGeneration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadIamge();
        }

        private void loadIamge()
        {
            Bitmap myBitMap = new Bitmap( Server.MapPath("Images/Letterhead_Large.png"));
            
            StringFormat myFormat = new StringFormat();
            myFormat.Alignment = StringAlignment.Far;
            
            Graphics g = Graphics.FromImage(myBitMap);
            g.DrawString("8306 SECTION RD\n\nPORT ALLEN, LA 70767-5108\n555.554.4544\n145.675.7899", new Font("Arial", 11), Brushes.Black, new PointF(525, 112), myFormat);
            g.DrawString("4224 Evan Brooks Drive | Baton Rouge, LA 70814 | 800.240.2546 | Fax 225.262.0071", new Font("Arial", 10), Brushes.Black, new PointF(70, 663));
           // g.DrawString("www.slumberparties.com", New Font("Ribbon131 BT", 110, FontStyle.Regular, GraphicsUnit.Point), Brushes.Gray, new PointF(209, 676));

            saveJpeg(Server.MapPath("Images/newImage.jpg"), myBitMap, 1);
            litMyimage.Visible = true;
        }

        private void saveJpeg(string path, Bitmap img, long quality)
        {
           // Encoder parameter for image quality
            EncoderParameter qualityParam = new EncoderParameter(Encoder.Quality, 100L);

           // Jpeg image codec
           ImageCodecInfo jpegCodec = this.getEncoderInfo("image/jpeg");

           if(jpegCodec == null)
              return;

           EncoderParameters encoderParams = new EncoderParameters(1);
           encoderParams.Param[0] = qualityParam;

           img.Save(path, jpegCodec, encoderParams);
        }

        private ImageCodecInfo getEncoderInfo(string mimeType)
        {
            // Get image codecs for all image formats
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();

            // Find the correct image codec
            for (int i = 0; i < codecs.Length; i++)
                if (codecs[i].MimeType == mimeType)
                    return codecs[i];
            return null;
        }
    }
}