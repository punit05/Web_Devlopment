<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CHANGE password.aspx.cs" Inherits="CHANGE_password" %>

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
            text-align: center;
        }
        .style3
        {
            width: 100%;
        }
    </style>
</head>
<body bgcolor="#c9c9c9">
    <form id="form1" runat="server">
    <div align=center>
    
    <div align=center>
    
        <table class="style1">
            <tr>
                <td colspan="3" bgcolor="Black" 
                    style="font-family: 'Chaparral Pro'; font-size: xx-large">
                    <span lang="en-in" style="font-weight: 700; color: #E3E3E3">WELCOME CHANGE 
                    FORM</span></td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE">
                    &nbsp;</td>
                <td bgcolor="#9AD3DE" style="text-align: right">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        
                        style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; color: #000000" 
                        PostBackUrl="~/Default.aspx">BACK</asp:LinkButton>
                </td>
                <td bgcolor="#9AD3DE" style="text-align: right">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        
                        style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; color: #000000" 
                        PostBackUrl="~/Login form.aspx">HOME</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; text-align: right">
                    UserName</td>
                <td bgcolor="#9AD3DE" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: right">
                    <span lang="en-in" style="font-weight: 700; text-align: right">Password</span></td>
                <td bgcolor="#9AD3DE" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True" 
                        ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: right" 
                    colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; " 
                    class="style2" colspan="3">
                    <asp:Panel ID="Panel1" runat="server" Height="150px" Visible="False">
                        <table class="style3">
                            <tr>
                                <td style="font-weight: 700; text-align: right">
                                    New Password</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700; text-align: right">
                                    Confirm Password</td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="font-weight: 700; text-align: center">
                                    <asp:Button ID="Button3" runat="server" 
                                        style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700" 
                                        Text="UPDATE" onclick="Button3_Click" />
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            </table>
    
    </div>
    
    </div>
    </form>
</body>
</html>
