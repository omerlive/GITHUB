<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1 id="headline">
            My First Web Form
        </h1>
        <p>
            <b>Please fill in the fields bellow:</b></p>
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="LblName" runat="server" Text="Name: "></asp:Label>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Lblgender" runat="server" Text="Gender: "></asp:Label>
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" AutoPostBack="true"
                        OnCheckedChanged="RadioButton1_CheckedChanged" Text="Female" TextAlign="Left" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" AutoPostBack="true"
                        OnCheckedChanged="RadioButton2_CheckedChanged" Text="Male" TextAlign="Left" />
                </td>
            </tr>
            <tr>
                <td>
                    First day of the semester:
                </td>
                <td>
                    <asp:Calendar ID="Calendar" runat="server" OnSelectionChanged="Calendar_SelectionChanged">
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbltext" runat="server" Text="Your first day of the semester was on: "></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:Label ID="lbldate" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="lblseason" runat="server" Text="Choose your favorite season: "></asp:Label>
                    <br />
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropdOnot" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                        AutoPostBack="true">
                        <asp:ListItem>Winter</asp:ListItem>
                        <asp:ListItem>Summer</asp:ListItem>
                        <asp:ListItem>Spring</asp:ListItem>
                        <asp:ListItem>Autumn</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:PlaceHolder ID="PHpic" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Lblvalidate" runat="server" Text="I validate all the information is correct: "></asp:Label>
                </td>
                <td>
                    <asp:CheckBox ID="CB_Confirm" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BTN_Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
                </td>
                <td>
                    <asp:PlaceHolder ID="PH_Submit" runat="server"></asp:PlaceHolder>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
