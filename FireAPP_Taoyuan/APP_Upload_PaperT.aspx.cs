using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FireAPP_Taoyuan
{
    public partial class APP_Upload_PaperT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mess = string.Empty;
            try
            {
                DateTime GetNowDateTimeDetail = new DateTime(0001, 01, 01, 01, 01, 01, 01);
                GetNowDateTimeDetail = DateTime.Now;
                string GetTime = GetNowDateTimeDetail.ToString("yyyyMMddhhmmssfffffff");
                GetTime += CreateRandomCode(5);

                var bytes = Convert.FromBase64String(Request["Preview"].ToString());

                string absPath = Server.MapPath("~/image/");
                //using (var imageFile = new FileStream(@"d:\FireAPP_Taoyuan\image\" + GetTime + ".jpg", FileMode.Create))
                using (var imageFile = new FileStream(absPath + GetTime + ".jpg", FileMode.Create))
                {
                    imageFile.Write(bytes, 0, bytes.Length);
                    imageFile.Flush();
                }
                mess = GetTime;
            }
            catch
            {
                mess = "Error";
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