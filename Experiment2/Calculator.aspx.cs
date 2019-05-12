﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{
    static string num1 = "0", num2 = "0", total = "", sign = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        total += "1";
        TextBox1.Text = total;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        total += "2";
        TextBox1.Text = total;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        total += "3";
        TextBox1.Text = total;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (sign.Length == 1)
        {
            Count();
            num1 = TextBox1.Text;
            sign = "+";
        }
        else
        {
            num1 = TextBox1.Text;
            TextBox1.Text = "";
            total = "";
            sign = "+";
        }

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (sign.Length == 1)
        {
            Count();
            num1 = TextBox1.Text;
            sign = "-";
        }
        else
        {
            num1 = TextBox1.Text;
            TextBox1.Text = "";
            total = "";
            sign = "-";
        }

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Count();
    }

    protected void Count()
    {
        num2 = TextBox1.Text;
        if (num2 == "")
        {
            num2 = "0";
        }
        switch (sign)
        {
            case "+":
                TextBox1.Text = (int.Parse(num1) + int.Parse(num2)).ToString();
                num1 = "0";
                num2 = "0";
                total = "";
                sign = "";
                break;
            case "-":
                TextBox1.Text = (int.Parse(num1) - int.Parse(num2)).ToString();
                num1 = "0";
                num2 = "0";
                total = "";
                sign = "";
                break;
        }
    }
}