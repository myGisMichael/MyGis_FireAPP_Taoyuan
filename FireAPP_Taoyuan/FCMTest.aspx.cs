using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class FCMTest :  System.Web.UI.Page
{
    //LoginSession ls = new LoginSession();
    string conStr = ConfigurationManager.ConnectionStrings["Firefighting"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) return;
        if (Request["token"] == null) return;
        string token = Request["token"].ToString();

        if (Request["token"] == null)
        {
            Response.Write("沒有TOKEN");
            return;
        }
        else
        {
            string table = "[FCMTokenRegister]";
            string _sql = string.Format(" insert into {0} ([Token]) values (@Token) ", table);

            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand(_sql, con))
                {
                    cmd.Parameters.AddWithValue("@Token", token);
                    cmd.ExecuteNonQuery();

                    ClientScriptManager cs = Page.ClientScript;
                    cs.RegisterClientScriptBlock(GetType(), "alert", "alert('Token儲存成功')", true);
                }
            }
        }
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        //if (Request["token"] == null)
        //{
        //    Response.Write("沒有TOKEN");
        //    return;
        //}
        //else
        //{
        //    string token = Request["token"].ToString();

        //    ls.LoginSession("醫院端", tbAc.Text, tbPW.Text, "");

        //    if (ls.AuthLogin)
        //    {
        //        Session.Add("AuthLogin", ls.AuthLogin);
        //        Session.Add("IsLogin", ls);

        //        // 資料庫存TOKEN

        //        string table = "[FCMTokenRegister]";
        //        string _sql = string.Format(" insert into {0} ([Hospital],[Token]) values (@Hospital,@Token) ",table);

        //        using(SqlConnection con = new SqlConnection(conStr))
        //        {
        //            con.Open();
        //            using(SqlCommand cmd = new SqlCommand(_sql,con))
        //            {
        //                cmd.Parameters.AddWithValue("@Hospital", ls.GetUserGroup);
        //                cmd.Parameters.AddWithValue("@Token", token);
        //                cmd.ExecuteNonQuery();
        //            }
        //        }
        //    }
        //}
    }

}