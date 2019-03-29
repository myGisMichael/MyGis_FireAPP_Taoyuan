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
    public partial class APP_Upload_DataTT : System.Web.UI.Page
    {
        string sqlStr = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["Firefighting"].ConnectionString;
            SqlConnection Conn = new SqlConnection(connStr);
            Conn.Open();

            sqlStr = "DELETE [ART_Parameters] ";
            sqlStr += "WHERE [FNumber] = @FNumber AND [Time1] = @Time1 AND [Time2] = @Time2 AND [Time3] = @Time3 AND [Time4] = @Time4 AND [Name] = @Name AND [Sex] = @Sex AND [ID] = @ID AND [LifeTime1] = @LifeTime1 AND [Consciousness1] = @Consciousness1 AND [LifeBreathing1] = @LifeBreathing1 AND [Pulse1] = @Pulse1 AND [GCS1_E] = @GCS1_E AND [GCS1_V] = @GCS1_V AND [GCS1_M] = @GCS1_M AND [SBP1] = @SBP1 AND [DBP1] = @DBP1 AND [BPressure1_A] = @BPressure1_A AND [SpO21] = @SpO21 AND [Temperature1] = @Temperature1 ";

            SqlCommand Cmd = new SqlCommand(sqlStr, Conn);
            Cmd.Parameters.AddWithValue("@FNumber", Request["FNumber"].ToString());
            Cmd.Parameters.AddWithValue("@Time1", Request["Time1"].ToString());
            Cmd.Parameters.AddWithValue("@Time2", Request["Time2"].ToString());
            Cmd.Parameters.AddWithValue("@Time3", Request["Time3"].ToString());
            Cmd.Parameters.AddWithValue("@Time4", Request["Time4"].ToString());
            Cmd.Parameters.AddWithValue("@Name", Request["Name"].ToString());
            Cmd.Parameters.AddWithValue("@Sex", Request["Sex"].ToString());
            Cmd.Parameters.AddWithValue("@ID", Request["ID"].ToString());
            Cmd.Parameters.AddWithValue("@LifeTime1", Request["LifeTime1"].ToString());
            Cmd.Parameters.AddWithValue("@Consciousness1", Request["Consciousness1"].ToString());
            Cmd.Parameters.AddWithValue("@LifeBreathing1", Request["LifeBreathing1"].ToString());
            Cmd.Parameters.AddWithValue("@Pulse1", Request["Pulse1"].ToString());
            Cmd.Parameters.AddWithValue("@GCS1_E", Request["GCS1_E"].ToString());
            Cmd.Parameters.AddWithValue("@GCS1_V", Request["GCS1_V"].ToString());
            Cmd.Parameters.AddWithValue("@GCS1_M", Request["GCS1_M"].ToString());
            Cmd.Parameters.AddWithValue("@SBP1", Request["SBP1"].ToString());
            Cmd.Parameters.AddWithValue("@DBP1", Request["DBP1"].ToString());
            Cmd.Parameters.AddWithValue("@BPressure1_A", Request["BPressure1_A"].ToString());
            Cmd.Parameters.AddWithValue("@SpO21", Request["SpO21"].ToString());
            Cmd.Parameters.AddWithValue("@Temperature1", Request["Temperature1"].ToString());

            Cmd.ExecuteNonQuery();
            Cmd.Cancel();

            string FNumber = Request["FNumber"].ToString();
            int Subno = 0;

            sqlStr = "SELECT MAX([Subno]) AS [Subno] FROM [ART_Parameters] ";
            sqlStr += "WHERE [FNumber] = @FNumber ";

            Cmd = new SqlCommand(sqlStr, Conn);
            Cmd.Parameters.AddWithValue("@FNumber", FNumber);

            if (!int.TryParse(Cmd.ExecuteScalar().ToString(), out Subno))
            {
                Subno = 0;
            }

            Subno++;

            Cmd.Cancel();

            string[] Array_Parameters = { "FNumber", "Subno", "LoadPDF", "Critical", "Date", "AttendanceUnit", "AcceptedUnit", "LocationHappen", "AssistanceUnit", "HospitalAddress", "ReasonHospital", "MHospital", "Time1", "Time2", "Time3", "Time4", "Time5", "Time6", "Name", "AgeM", "AgeA", "Age", "Sex", "ID", "Address", "Property", "RCustody", "Custody", "Trauma_TF", "Trauma_Select", "Trauma1", "Transport", "NTrauma_Select", "NTrauma6", "Witnesses", "CPR", "PAD", "ROSC", "PSpecies", "Stroke", "LTime", "Smile", "LArm", "Speech", "Breathing", "TDisposal", "CPRDisposal", "CPRDisposal3", "DDisposal", "DDisposal1", "ODisposal", "ALSDisposal", "Posture", "DrugUseTime1", "DrugUseName1", "DrugUseDose1", "DrugUser1", "DrugUseTime2", "DrugUseName2", "DrugUseDose2", "DrugUser2", "DrugUseTime3", "DrugUseName3", "DrugUseDose3", "DrugUser3", "DrugUseTime4", "DrugUseName4", "DrugUseDose4", "DrugUser4", "Q1", "Q2", "Q3", "Q4", "Q5", "MHistory", "Allergies", "People", "Switch_People", "LifeTime1", "Consciousness1", "LifeBreathing1", "Pulse1", "GCS1_E", "GCS1_V", "GCS1_M", "SBP1", "DBP1", "BPressure1_A", "SpO21", "Temperature1", "LifeTime2", "Consciousness2", "LifeBreathing2", "Pulse2", "GCS2_E", "GCS2_V", "GCS2_M", "SBP2", "DBP2", "BPressure2_A", "SpO22", "Temperature2", "LifeTime3", "Consciousness3", "LifeBreathing3", "Pulse3", "GCS3_E", "GCS3_V", "GCS3_M", "SBP3", "DBP3", "BPressure3_A", "SpO23", "Temperature3", "AStaffNO1", "AStaffNO2", "AStaffNO3", "AStaffNO4", "AStaffNO5", "AStaffNO6", "IClassification", "cb_RHospital", "RHospital", "RRelationship", "Relationship", "Phone", "I_SCustody", "I_SNote", "I_SAStaff1", "I_SAStaff2", "I_SAStaff3", "I_SAStaff4", "I_SAStaff5", "I_SAStaff6", "I_SHStaff", "I_SRRelationship", "I_SRelationship", "Preview" };

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
                switch (Array_Parameters[i])
                {
                    case "Subno":
                        Cmd.Parameters.AddWithValue(Array_Parameters[i], Subno.ToString());
                        break;
                    case "I_SCustody":
                    case "I_SNote":
                    case "I_SAStaff1":
                    case "I_SAStaff2":
                    case "I_SAStaff3":
                    case "I_SAStaff4":
                    case "I_SAStaff5":
                    case "I_SAStaff6":
                    case "I_SHStaff":
                    case "I_SRRelationship":
                    case "I_SRelationship":
                    case "Preview":
                        string Preview = "image/" + Request["PaperName"].ToString() + "_" + Array_Parameters[i] + ".jpg";

                        string pathPreview = Server.MapPath(Preview);
                        if (File.Exists(pathPreview))
                        {
                            Cmd.Parameters.AddWithValue(Array_Parameters[i], Preview);
                        }
                        else
                        {
                            Cmd.Parameters.AddWithValue(Array_Parameters[i], DBNull.Value);
                        }
                        
                        break;
                    default:
                        Cmd.Parameters.AddWithValue(Array_Parameters[i], Request[Array_Parameters[i]].ToString());
                        break;
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