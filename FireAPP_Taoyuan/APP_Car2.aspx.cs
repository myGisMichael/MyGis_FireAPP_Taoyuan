using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FireAPP_Taoyuan
{
    public partial class APP_Car2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Team = Request["Team"].ToString();
            string mess = string.Empty;

            string connStr = ConfigurationManager.ConnectionStrings["Firefighting"].ConnectionString;
            SqlConnection Conn = new SqlConnection(connStr);
            Conn.Open();

            string sqlStr = "SELECT DISTINCT [GroupType] FROM [GPSCar] ";
            sqlStr += "WHERE [Team] like @Team and [GroupType] <> '指揮中心分隊展示席' ";

            SqlCommand Cmd = new SqlCommand(sqlStr, Conn);
            Cmd.Parameters.AddWithValue("@Team", Team.Substring(0, 2) + "%");

            SqlDataReader DR = Cmd.ExecuteReader();

            while (DR.Read())
            {
                mess += DR["GroupType"].ToString() + ",";
            }

            Response.Write(mess.TrimEnd(','));

            Cmd.Cancel();
            DR.Close();
            Conn.Close();
            Conn.Dispose();

            Response.End();
        }
    }
}