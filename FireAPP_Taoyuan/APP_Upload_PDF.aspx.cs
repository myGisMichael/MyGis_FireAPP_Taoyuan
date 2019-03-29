using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FireAPP_Taoyuan
{
    public partial class APP_Upload_PDF : System.Web.UI.Page
    {
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

                using (SqlConnection con = new SqlConnection(conStr))
                {
                    string _sql = " update [NotifyHospital] set [ECG_PDF] = @ECG_PDF where [Shapeindex] = @Shapeindex ";
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(_sql, con))
                    {
                        cmd.Parameters.AddWithValue("@Shapeindex", (Request["Shapeindex"] != null ? Request["Shapeindex"].ToString() : ""));
                        cmd.Parameters.AddWithValue("@ECG_PDF", @"./uploads/" + GetTime + Path.GetExtension(_File.FileName).ToLower());
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }
    }
}