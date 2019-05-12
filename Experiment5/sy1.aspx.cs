using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int i;
        string str = "你选择的是：<br>";
        for (i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
                str += CheckBoxList1.Items[i].Text + "";
        }
        Label1.Text = str;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        CheckBoxList1.ClearSelection();
        Label1.Text = "";
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        string mm = Request["master"];
        if (mm == "master1")
        {
            this.MasterPageFile = "master1.master";
        }
        if (mm == "master2")
        {
            this.MasterPageFile = "master2.master";


        }
    }
}