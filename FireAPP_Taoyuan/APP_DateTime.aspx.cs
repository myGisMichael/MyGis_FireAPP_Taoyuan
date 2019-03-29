using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FireAPP_Taoyuan
{
    public partial class APP_DateTime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Time = Request["Time"].ToString();

            DateTime now = DateTime.Now;
            DateTime start = Convert.ToDateTime(now.AddDays(1 - now.Day).ToString("yyyy-MM-dd"));
            DateTime startlast = start.AddMonths(-1);
            DateTime term = start.AddDays(start.Day + 9);
            DateTime end = start.AddMonths(1);

            DateTime date = new DateTime();

            if (!DateTime.TryParse(Time, out date))
            {
                Response.Write("Error");
                Response.End();
                return;
            }

            string mess = "OK";
            if (now < term)
            {
                if (!(date < end && date >= startlast))
                {
                    mess = "Error";
                }
            }
            else
            {
                if (!(date < end && date >= start))
                {
                    mess = "Error";
                }
            }
            Response.Write(mess);
            Response.End();
        }
    }
}