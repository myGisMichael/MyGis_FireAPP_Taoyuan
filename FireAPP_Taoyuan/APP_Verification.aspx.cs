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
    public partial class APP_Verification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string AndroidID = Request["AndroidID"].ToString();
            string mess = string.Empty;

            string connStr = ConfigurationManager.ConnectionStrings["Firefighting"].ConnectionString;
            SqlConnection Conn = new SqlConnection(connStr);
            Conn.Open();

            string sqlStr = "SELECT [status] FROM [APP_Verification] ";
            sqlStr += "WHERE [AndroidID] = @AndroidID ";

            SqlCommand Cmd = new SqlCommand(sqlStr, Conn);
            Cmd.Parameters.AddWithValue("@AndroidID", AndroidID);

            SqlDataReader DR = Cmd.ExecuteReader();

            int count = 0;
            bool status = false;
            if (DR.Read())
            {
                count++;
                if (DR["status"].ToString() == "True")
                {
                    status = true;
                }
            }

            if (status)
            {
                Response.Write("OK");
            }
            else
            {
                if (count == 0)
                {
                    SqlDataSource add = new SqlDataSource();
                    add.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Firefighting"].ConnectionString;
                    add.InsertCommand = "INSERT INTO APP_Verification( AndroidID, status) ";
                    add.InsertCommand += "VALUES ( @AndroidID, 'False') ";
                    add.InsertParameters.Add("AndroidID", AndroidID);

                    add.Insert();
                    add.InsertParameters.Clear();
                }
                Response.Write("尚未開通權限!");
            }

            Cmd.Cancel();
            DR.Close();
            Conn.Close();
            Conn.Dispose();

            Response.End();
        }
    }
}