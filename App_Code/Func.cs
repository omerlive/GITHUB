using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for func
/// </summary>
public class Func
{
    public Func()
    {

    }

    public string ChangeColor(string name)
    {
        if (name == "Female")
            name = "pink";
        else
            name = "blue";
        return name;
    }

    public string ChangePic(string season)
    {
        switch (season)
        {
            case "Winter":

                season = "Pics/winter.jpg";

                break;
            case "Summer":

                season = "Pics/summer.png";

                break;
            case "Spring":

                season = "Pics/spring.png";

                break;
            case "Autumn":

                season = "Pics/autumn.png";

                break;


        }
        return season;
    }
}