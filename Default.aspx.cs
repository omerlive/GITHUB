using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Func myfunc = new Func();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar_SelectionChanged(object sender, EventArgs e)
    {
        lbldate.Text = Calendar.SelectedDate.ToShortDateString();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        string season = DropdOnot.SelectedItem.ToString();
        Image PIC1 = new Image();
        PIC1.ImageUrl = myfunc.ChangePic(season);
        PHpic.Controls.Add(PIC1);
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Label msgSub = new Label();
        if (CB_Confirm.Checked == true)
        {
            msgSub.Text = "Information have been met successfully";
            msgSub.BackColor = System.Drawing.Color.Yellow;
        }
        else
        {
            msgSub.Text = "you must confirm the  details";
            msgSub.BackColor = System.Drawing.Color.Red;
        }

        PH_Submit.Controls.Add(msgSub);
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
    
        string color = RadioButton1.Text;
        string ans = myfunc.ChangeColor(color);
        form1.Attributes.Add("style", "background-color:" + ans);

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        
        string color = RadioButton2.Text;
        string ans = myfunc.ChangeColor(color);
        form1.Attributes.Add("style", "background-color:" + ans);
    }
}