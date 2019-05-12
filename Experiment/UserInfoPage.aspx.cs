using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserInfoPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        string birthday = TextBox2.Text;
        UserInfo userInfo = new UserInfo(name, DateTime.ParseExact(birthday, "yyyyMMdd", null));
        Response.Write(userInfo.DecideAge());
    }
}