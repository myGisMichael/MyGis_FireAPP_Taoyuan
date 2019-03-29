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
    public partial class APP_Upload_Data : System.Web.UI.Page
    {
        string sqlStr = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = System.AppDomain.CurrentDomain.BaseDirectory;
            if (!File.Exists(str + "image\\" + Request["PaperName"].ToString() + ".jpg"))
            {
                Response.Write("圖檔出現異常，請重新上傳！");
                Response.End();
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["Firefighting"].ConnectionString;
            SqlConnection Conn = new SqlConnection(connStr);
            Conn.Open();

            string FNumber = Request["FNumber"].ToString();
            int Subno = 0;

            sqlStr = "SELECT MAX([Subno]) AS [Subno] FROM [ART_Parameters] ";
            sqlStr += "WHERE [FNumber] = @FNumber ";

            SqlCommand Cmd = new SqlCommand(sqlStr, Conn);
            Cmd.Parameters.AddWithValue("@FNumber", FNumber);

            if (!int.TryParse(Cmd.ExecuteScalar().ToString(), out Subno))
            {
                Subno = 0;
            }

            Subno++;

            Cmd.Cancel();

            File.Move(str + "image\\" + Request["PaperName"].ToString() + ".jpg", str + "image\\" + Request["FNumber"].ToString() + "_" + Subno.ToString() + ".jpg");

            string[] Array_Parameters = { "FNumber", "Subno", "LoadPDF", "Critical", "Date", "AttendanceUnit", "AcceptedUnit", "LocationHappen", "AssistanceUnit", "HospitalAddress", "ReasonHospital", "MHospital", "Time1", "Time2", "Time3", "Time4", "Time5", "Time6", "Name", "AgeM", "AgeA", "Age", "Sex", "ID", "Address", "Property", "RCustody", "Custody", "Trauma_TF", "Trauma_Select", "Trauma1", "Transport", "NTrauma_Select", "NTrauma6", "Witnesses", "CPR", "PAD", "ROSC", "PSpecies", "Stroke", "LTime", "Smile", "LArm", "Speech", "Breathing", "TDisposal", "CPRDisposal", "CPRDisposal3", "DDisposal", "DDisposal1", "ODisposal", "ALSDisposal", "Posture", "DrugUseTime1", "DrugUseName1", "DrugUseDose1", "DrugUser1", "DrugUseTime2", "DrugUseName2", "DrugUseDose2", "DrugUser2", "DrugUseTime3", "DrugUseName3", "DrugUseDose3", "DrugUser3", "DrugUseTime4", "DrugUseName4", "DrugUseDose4", "DrugUser4", "Q1", "Q2", "Q3", "Q4", "Q5", "MHistory", "Allergies", "People", "LifeTime1", "Consciousness1", "LifeBreathing1", "Pulse1", "GCS1_E", "GCS1_V", "GCS1_M", "SBP1", "DBP1", "BPressure1_A", "SpO21", "Temperature1", "LifeTime2", "Consciousness2", "LifeBreathing2", "Pulse2", "GCS2_E", "GCS2_V", "GCS2_M", "SBP2", "DBP2", "BPressure2_A", "SpO22", "Temperature2", "LifeTime3", "Consciousness3", "LifeBreathing3", "Pulse3", "GCS3_E", "GCS3_V", "GCS3_M", "SBP3", "DBP3", "BPressure3_A", "SpO23", "Temperature3", "AStaffNO1", "AStaffNO2", "AStaffNO3", "AStaffNO4", "AStaffNO5", "AStaffNO6", "IClassification", "cb_RHospital", "RHospital", "RRelationship", "Relationship", "Phone", "Preview" };

            sqlStr = "INSERT INTO [ART_Parameters] ( ";
            for (int i = 0; i < Array_Parameters.Length; i++)
            {
                if (i == Array_Parameters.Length - 1)
                {
                    sqlStr += Array_Parameters[i];
                }
                else
                {
                    sqlStr += Array_Parameters[i] + ", ";
                }
            }
            sqlStr += ") ";
            sqlStr += "VALUES ( ";
            for (int i = 0; i < Array_Parameters.Length; i++)
            {
                if (i == Array_Parameters.Length - 1)
                {
                    sqlStr += "@" + Array_Parameters[i];
                }
                else
                {
                    sqlStr += "@" + Array_Parameters[i] + ", ";
                }
            }
            sqlStr += ") ";

            Cmd = new SqlCommand(sqlStr, Conn);
            for (int i = 0; i < Array_Parameters.Length; i++)
            {
                if (Array_Parameters[i] == "Subno")
                {
                    Cmd.Parameters.AddWithValue(Array_Parameters[i], Subno.ToString());
                }
                else if (Array_Parameters[i] == "Preview")
                {
                    string Preview = "image/" + Request["FNumber"].ToString() + "_" + Subno.ToString() + ".jpg";
                    Cmd.Parameters.AddWithValue(Array_Parameters[i], Preview);
                }
                else
                {
                    Cmd.Parameters.AddWithValue(Array_Parameters[i], Request[Array_Parameters[i]].ToString());
                }
            }

            Cmd.ExecuteNonQuery();

            Cmd.Cancel();
            Conn.Close();
            Conn.Dispose();

            Response.Write("OK");
            Response.End();
        }
    }
}