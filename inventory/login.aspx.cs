using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing.Imaging;

using ThoughtWorks.QRCode.Codec;
using ThoughtWorks.QRCode.Codec.Data;
using ThoughtWorks.QRCode.Codec.Util;
using System.IO;
using System.Text;
using System.Drawing;

namespace DB.Web.inventory
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Guid guid =Guid.NewGuid();
                string id = guid.ToString();
                ViewState["pid"] = guid.ToString();
                QRCodeEncoder qrCodeEncoder = new QRCodeEncoder();

                qrCodeEncoder.QRCodeEncodeMode = QRCodeEncoder.ENCODE_MODE.BYTE;

                qrCodeEncoder.QRCodeScale = 4;

                qrCodeEncoder.QRCodeVersion = 10;

                qrCodeEncoder.QRCodeErrorCorrect = QRCodeEncoder.ERROR_CORRECTION.M;


                //String data = "Hello 二维码！";
                String data = "http://www.imutuus.com/inventory/login_confirm.aspx?id="+id;
                //Response.Write(data);
                Bitmap bmp = GetQRCodeBmp(data);
                string spath = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + ".gif";
                //  string path = Server.MapPath(".") + "/ProImg/" + fileImg + extension;              
                string path = Page.Server.MapPath("~/qrcode/" + spath);
                //string str = HttpContext.Current.Request.MapPath("\\aa.bmp");
                bmp.Save(path);
            

                //FileInfo f = new FileInfo(@"d:\zl.png");
                //Directory.CreateDirectory("d:\\zlf");
                //string spath = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + ".gif";
                ////  string path = Server.MapPath(".") + "/ProImg/" + fileImg + extension;              
                //string path = Page.Server.MapPath("~/qrcode/" + spath);
                //FileStream fs = new FileStream(path, FileMode.Create, FileAccess.ReadWrite);

                //BinaryWriter bw = new BinaryWriter(fs, UTF8Encoding.UTF8);
                //byte[] by = MStream.ToArray();
                //for (int i = 0; i < MStream.ToArray().Length; i++)
                //{
                //    bw.Write(by[i]);
                //}
                //fs.Close();
                qrcode.Src = path;

            }
        }
        #region 根据链接获取二维码
        /// <summary>
        /// 根据链接获取二维码
        /// </summary>
        /// <param name="link">链接</param>
        /// <returns>返回二维码图片</returns>
        public static Bitmap GetQRCodeBmp(string link)
        {
            QRCodeEncoder qrCodeEncoder = new QRCodeEncoder();
            qrCodeEncoder.QRCodeEncodeMode = QRCodeEncoder.ENCODE_MODE.BYTE;
            qrCodeEncoder.QRCodeScale = 4;
            qrCodeEncoder.QRCodeVersion = 0;
            qrCodeEncoder.QRCodeErrorCorrect = QRCodeEncoder.ERROR_CORRECTION.M;
            Bitmap bmp = qrCodeEncoder.Encode(link);
            return bmp;
        }
        #endregion
    }
}