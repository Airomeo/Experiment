using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Projects\ASP.NET\Experiment\Experiment6\App_Data\Database.mdf;Integrated Security=True";
        SqlConnection connection = new SqlConnection(connString);
        string strLoginName = TxtName.Text.ToString();
        string strPassword = TxtPass.Text.ToString();

        string strselect = string.Format("select count(*) from [User] where LoginName='{0}'and Password='{1}'", strLoginName, strPassword);
        connection.Open();
        SqlCommand comm = new SqlCommand(strselect, connection);
        int num = (int)comm.ExecuteScalar();
        if (num > 0)
        {
            LblCaution.Text = "登录成功";
        }
        else
        {
            LblCaution.Text = "登录失败";
        }
        connection.Close();
    }
}