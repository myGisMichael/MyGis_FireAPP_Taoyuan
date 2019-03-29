using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FireAPP_Taoyuan
{
    public partial class testUpload : System.Web.UI.Page
    {
        const string API_KEY = "AAAAXbCKErE:APA91bEGyOqwlMjHkUlKTHooR9Cco0ilhEsH1jq4Dss59CMD5ZezKIPWxHjCKAnffsYd2IjcgYMVWd6rN2B0IVeAna1uQkMlwjwdugiSdvbo-46UWxmShXsdO01CaVjVq3usNaWcMI3H";
        // string APP_ID = @"cBLP5epK1EM:APA91bE5FtsVbgfl0G1BINluWhNuVns6Op8ryY6h9sjGU_0RvPfCYvlWAbeQot38eGuPtNrTmbeztgBqzJUOZ5Vnbu9Up7kWwFuE8XM2bPEi8Mzab5yg6pRkoiqKNyZm9MovyKao9U-2";
        string conStr = ConfigurationManager.ConnectionStrings["Firefighting"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            string relativePath = @"uploads\";
            string absolutePath = Server.MapPath("~/" + relativePath);
            DateTime GetNowDateTimeDetail = new DateTime(0001, 01, 01, 01, 01, 01, 01);
            GetNowDateTimeDetail = DateTime.Now;
            string GetTime = GetNowDateTimeDetail.ToString("yyyyMMddhhmmssfffffff");
            string _path = string.Empty;

            for (int i = 0; i < Request.Files.Count; i++)
            {
                HttpPostedFile _File = Request.Files[i];


                if (_File.ContentLength == 0 || String.IsNullOrEmpty(_File.FileName))
                {
                    continue;
                }

                string displayFileName = Path.GetFileName(_File.FileName);
                //string realFileName = NewFileName(absolutePath, displayFileName);
                _path = absolutePath + "/" + GetTime + Path.GetExtension(_File.FileName).ToLower();
                _File.SaveAs(_path);


                //getTokenAndSend(Server.MapPath("~/uploads/" + GetTime + Path.GetExtension(_File.FileName).ToLower()));
                getTokenAndSend("http://ecloud.tyfd.gov.tw/FireAPP_Taoyuan/uploads/" + GetTime + Path.GetExtension(_File.FileName).ToLower());
            }


            //Response.Write("http://ecloud.tyfd.gov.tw/FireAPP_Taoyuan/uploads/" + GetTime + Path.GetExtension("").ToLower());
        }

        private void FCM_Send(string _url, string APP_ID)
        {
            //設定推播的訊息
            Json json = new Json();
            json.to = APP_ID;
            json.data = new Data() { status = "HtmlPage4.html", title = "test", body = "test", url = _url, icon = "/Gis.png" };


            //將推播的訊息序列化為JSON格式
            JavaScriptSerializer Serializer = new JavaScriptSerializer();
            string JsonString = Serializer.Serialize(json);
            byte[] JsonBytes = Encoding.UTF8.GetBytes(JsonString);
            Response.Write(JsonString);
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://fcm.googleapis.com/fcm/send");
            request.Method = "POST";
            request.Headers[HttpRequestHeader.Authorization] = "key=" + API_KEY;
            request.ContentType = @"application/json;charset=utf-8;";
            request.Credentials = CredentialCache.DefaultCredentials;
            request.ContentLength = JsonString.Length;
            request.SendChunked = true;
            Stream stream = request.GetRequestStream();
            stream.Write(JsonBytes, 0, JsonBytes.Length);
            stream.Close();

            try
            {
                WebResponse response = request.GetResponse();
                StreamReader reader = new StreamReader(response.GetResponseStream());
                Response.Write(reader.ReadToEnd());
                reader.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            Response.Write("<hr>");
        }

        private void getTokenAndSend(string imageUrl)
        {
            string table = "[FCMTokenRegister]";
            string _sql = string.Format(" select distinct [Token] from {0}", table);

            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(_sql, con))
                {
                    SqlDataReader dr = cmd.ExecuteReader();

                    while (dr.Read())
                    {
                        FCM_Send(imageUrl, dr["Token"] != DBNull.Value ? dr["Token"].ToString() : "");
                    }
                }
            }
        }


        class Json
        {
            public string to = string.Empty;
            public Data data = new Data();
        }

        class Data
        {
            public string status = string.Empty;
            public string title = string.Empty;
            public string body = string.Empty;
            public string url = string.Empty;
            public string icon = string.Empty;
        }
    }
}