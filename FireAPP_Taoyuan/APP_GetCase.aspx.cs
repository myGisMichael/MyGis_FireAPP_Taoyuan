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
    public partial class APP_GetCase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string GroupType = Request["GroupType"].ToString();
            string[] CS_NO = Request["CS_NO"].ToString().Split(',');
            string mess = string.Empty;

            string connStr = ConfigurationManager.ConnectionStrings["Firefighting"].ConnectionString;
            SqlConnection Conn = new SqlConnection(connStr);
            Conn.Open();

            string sqlStr = "SELECT [Case].[CS_NO], [Case].[CODE], CONVERT(char(19), [Case].[IN_TIME], 120) AS [IN_TIME], [Case].[TownName], [Case].[CS_PLACE], [Car].[Call_NO], [Case].[lng], [Case].[lat] FROM [V_CASE] AS [Case] INNER JOIN [V_CASECar] AS [Car] ON [Case].[id] = [Car].[CaseID] ";
            sqlStr += "WHERE [Car].[GroupType] LIKE @GroupType AND [OutDateTime] BETWEEN @BTime AND @ETime AND [isFinish] IS Null ";
            if (CS_NO.Length > 0)
            {
                sqlStr += "AND [Case].[CS_NO] NOT IN (";
                foreach (string caseID in CS_NO)
                {
                    sqlStr += "'" + caseID + "',";
                }
                sqlStr = sqlStr.TrimEnd(',');
                sqlStr += ") ";
            }

            SqlCommand Cmd = new SqlCommand(sqlStr, Conn);
            Cmd.Parameters.AddWithValue("@GroupType", "%" + GroupType + "%");
            Cmd.Parameters.AddWithValue("@BTime", DateTime.Now.AddHours(-2).ToString("yyyy-MM-dd HH:mm:ss"));
            Cmd.Parameters.AddWithValue("@ETime", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));

            SqlDataReader DR = Cmd.ExecuteReader();

            while (DR.Read())
            {
                mess += DR["CS_NO"].ToString() + "@";
                mess += DR["CODE"].ToString() + "@";
                mess += DR["IN_TIME"].ToString() + "@";
                mess += DR["TownName"].ToString() + DR["CS_PLACE"].ToString() + "@";
                mess += DR["Call_NO"].ToString() + "@";
                mess += DR["lng"].ToString() + "," + DR["lat"].ToString() + "／";
            }
            if (mess == string.Empty)
            {
                mess = "Null";
            }
            Response.Write(mess.TrimEnd('／'));

            Cmd.Cancel();
            DR.Close();
            Conn.Close();
            Conn.Dispose();

            Response.End();
        }
    }
}