using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FireAPP_Taoyuan
{
    public partial class APP_FileUpLoad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string relativePath = @"uploads\";
            string absolutePath = Server.MapPath("~/" + relativePath);

            for (int i = 0; i < Request.Files.Count; i++)
            {
                HttpPostedFile aFile = Request.Files[i];

                if (aFile.ContentLength == 0 || String.IsNullOrEmpty(aFile.FileName))
                {
                    continue;
                }

                string displayFileName = Path.GetFileName(aFile.FileName);
                //string realFileName = NewFileName(absolutePath, displayFileName);

                aFile.SaveAs(absolutePath + "/test" + i.ToString() + Path.GetExtension(aFile.FileName).ToLower());

            }
            Response.Write("OK");
            Response.End();
        }
    }
}