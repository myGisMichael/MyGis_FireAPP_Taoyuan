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
    public partial class APP_Get_MHospital : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mess = string.Empty;

            string connStr = ConfigurationManager.ConnectionStrings["Firefighting"].ConnectionString;
            SqlConnection Conn = new SqlConnection(connStr);
            Conn.Open();

            string sqlStr = "SELECT [t_Hospital].[Name] FROM [H_FullBed] INNER JOIN [t_Hospital] ON [H_FullBed].[HospitalID] = [t_Hospital].[id] ";
            sqlStr += "WHERE [H_FullBed].[NotifyTime] > @BTime ";

            SqlCommand Cmd = new SqlCommand(sqlStr, Conn);
            Cmd.Parameters.AddWithValue("@BTime", DateTime.Now.AddHours(-2).ToString("yyyy-MM-dd HH:mm:ss"));

            SqlDataReader DR = Cmd.ExecuteReader();

            while (DR.Read())
            {
                mess += DR["Name"].ToString() + ",";
            }
            if (mess == string.Empty)
            {
                mess = "Null";
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