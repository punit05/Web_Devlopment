<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login form.aspx.cs" Inherits="Login_form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 60%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            text-align: center;
        }
    </style>
</head>
<body bgcolor="#c9c9c9">
    <form id="form1" runat="server">
    <div align=center>
    
        <table class="style1" bgcolor="#89BDD3">
            <tr>
                <td colspan="4" bgcolor="Black" style="font-size: xx-large; text-align: center">
                    <span lang="en-in" 
                        style="font-weight: 700; color: #E3E3E3; font-family: 'Chaparral Pro'">LOGIN 
                    FORM</span></td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        
                        style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; color: #000000; text-align: right" 
                        PostBackUrl="~/Default.aspx">BACK</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; text-align: right">
                    <span lang="en-in" style="font-weight: 700; text-align: right">Username</span></td>
                <td colspan="2" style="text-align: center; margin-left: 200px">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700; text-align: right">
                    Password</td>
                <td class="style2" colspan="2" style="text-align: center; margin-left: 240px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700">
                    <asp:Button ID="Button1" runat="server" 
                        
                        style="font-weight: 700; font-size: x-large; text-align: center; font-family: 'Times New Roman', Times, serif;" 
                        Text="Login" onclick="Button1_Click" />
                </td>
                <td class="style3" colspan="2" style="margin-left: 240px">
                    <asp:Button ID="Button2" runat="server" 
                        
                        style="font-size: x-large; font-weight: 700; font-family: 'Times New Roman', Times, serif;" 
                        Text="Reset" onclick="Button2_Click" />
&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        style="font-size: x-large; color: #000000" 
                        PostBackUrl="~/registratio.aspx">New User</asp:LinkButton>
                </td>
                <td colspan="2" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700">
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click" 
                        style="color: #000000; font-size: x-large" 
                        PostBackUrl="~/Forgetpassword.aspx">Forget Password</asp:LinkButton>
                </td>
                <td style="font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: 700">
                    <asp:LinkButton ID="LinkButton4" runat="server" 
                        style="color: #000000; font-size: x-large" 
                        PostBackUrl="~/CHANGE password.aspx">Change Password</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
