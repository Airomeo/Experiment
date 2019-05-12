using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Choice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lblQuestion = new Label();
        lblQuestion.ID = "lblQuestion";
        lblQuestion.Text = "1.&nbsp;Web服务器控件不包括（&nbsp;&nbsp;&nbsp;&nbsp;)";
        PlaceHolder1.Controls.Add(lblQuestion);
        RadioButtonList rdoltChoice = new RadioButtonList();
        rdoltChoice.ID = "rdoltChoice";
        rdoltChoice.Items.Add(new ListItem("A.Wizard", "A"));
        rdoltChoice.Items.Add(new ListItem("B.input", "B"));
        rdoltChoice.Items.Add(new ListItem("C.AdRotator", "C"));
        rdoltChoice.Items.Add(new ListItem("D.Calendar", "D"));
        PlaceHolder1.Controls.Add(rdoltChoice);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        RadioButtonList rdoltChoice = (RadioButtonList)PlaceHolder1.FindControl("rdoltChoice");
        Label1.Text = "您选择了：" + rdoltChoice.SelectedValue;
    }
}