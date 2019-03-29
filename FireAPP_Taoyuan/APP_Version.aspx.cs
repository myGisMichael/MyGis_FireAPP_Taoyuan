using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FireAPP_Taoyuan
{
    public partial class APP_Version : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Version = Request["Version"].ToString();

            string mess = string.Empty;
            if (Version != "1.4.1")
            {
                mess = "OK";
            }

            Response.Write(mess);
            Response.End();
        }
    }
}