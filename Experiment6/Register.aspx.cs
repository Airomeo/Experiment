using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnReg_Click(object sender, EventArgs e)
    {

        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Projects\ASP.NET\Experiment\Experiment6\App_Data\Database.mdf;Integrated Security=True";
        SqlConnection connection = new SqlConnection(connString);
        string strLoginName = TxtLoginName.Text.ToString();
        string strUserName = TxtName.Text.ToString();
        string strPassword = TxtPass.Text.ToString();
        string strAddress = TxtAddress.Text.ToString();
        string strHomePage = TxtHomePage.Text.ToString();
        string strEmail = TxtEmail.Text.ToString();

        string strInsert = string.Format("insert into [User](LoginName,UserName,Password,Address,HomePage,Email) values('{0}','{1}','{2}','{3}','{4}','{5}')",
            strLoginName, strUserName, strPassword, strAddress, strHomePage, strEmail);
        connection.Open();
        SqlCommand comm = new SqlCommand(strInsert, connection);
        int num = comm.ExecuteNonQuery();
        if (num == -1)
        {
            LblCaution.Text = "注册失败";
        }
        else
        {
            LblCaution.Text = "注册成功，欢迎你：" + strLoginName;
        }
        connection.Close();
    }
}