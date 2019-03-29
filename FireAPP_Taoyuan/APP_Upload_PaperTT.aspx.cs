using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FireAPP_Taoyuan
{
    public partial class APP_Upload_PaperTT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mess = string.Empty;
            string[] _imgs = { "I_SCustody", "I_SNote", "I_SAStaff1", "I_SAStaff2", "I_SAStaff3", "I_SAStaff4", "I_SAStaff5", "I_SAStaff6", "I_SHStaff", "I_SRRelationship", "I_SRelationship", "Preview" };

            DateTime GetNowDateTimeDetail = new DateTime(0001, 01, 01, 01, 01, 01, 01);
            GetNowDateTimeDetail = DateTime.Now;
            string GetTime = GetNowDateTimeDetail.ToString("yyyyMMddhhmmssfffffff");
            GetTime += CreateRandomCode(5);
            mess = GetTime;

            foreach (string _img in _imgs)
            {
                try
                {
                    var bytes = Convert.FromBase64String(Request[_img].ToString());
                    using (var imageFile = new FileStream(Server.MapPath("~/image/") + GetTime + "_" + _img + ".jpg", FileMode.Create))
                    {
                        imageFile.Write(bytes, 0, bytes.Length);
                        imageFile.Flush();
                    }
                }
                catch
                {
                    
                }
            }

            Response.Write(mess);
            Response.End();
        }

        public string CreateRandomCode(int Number)
        {
            string allChar = "0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
            string[] allCharArray = allChar.Split(',');
            string randomCode = "";
            int temp = -1;

            Random rand = new Random();
            for (int i = 0; i < Number; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
                }
                int t = rand.Next(36);
                if (temp != -1 && temp == t)
                {
                    return CreateRandomCode(Number);
                }
                temp = t;
                randomCode += allCharArray[t];
            }
            return randomCode;
        }

        public static bool FileDelete(string path)
        {
            bool ret = false;
            System.IO.FileInfo file = new System.IO.FileInfo(path);
            if (file.Exists)
            {
                file.Delete();
                ret = true;
            }

            return ret;
        }
    }
}