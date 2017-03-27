<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registratio.aspx.cs" Inherits="registratio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 60%;
        }
    </style>
</head>
<body bgcolor="#c9c9c9">
    <form id="form1" runat="server">
    <div align=center>
    
        <table class="style1">
            <tr>
                <td colspan="3" bgcolor="Black" 
                    style="font-family: 'Chaparral Pro'; font-size: xx-large">
                    <span lang="en-in" style="font-weight: 700; color: #E3E3E3">WELCOME REGISTRATION 
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
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" 
                        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: right">
                    <span lang="en-in" style="font-weight: 700; text-align: right">Password</span></td>
                <td bgcolor="#9AD3DE" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: right; font-weight: 700">
                    Confirm Password</td>
                <td bgcolor="#9AD3DE" colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: center; font-weight: 700" 
                    colspan="3">
                    If You forget Password...</td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: right; font-weight: 700">
                    Question</td>
                <td bgcolor="#9AD3DE" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" style="text-align: center">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>First Mobile Number</asp:ListItem>
                        <asp:ListItem>Birth Place</asp:ListItem>
                        <asp:ListItem>Pet Name</asp:ListItem>
                        <asp:ListItem>First Teacher Name </asp:ListItem>
                    </asp:DropDownList>
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: right; font-weight: 700">
                    Answer</td>
                <td bgcolor="#9AD3DE" colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td bgcolor="#9AD3DE" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; text-align: right; font-weight: 700">
                    <asp:Button ID="Button1" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700" 
                        Text="Submit" onclick="Button1_Click" />
                </td>
                <td bgcolor="#9AD3DE" colspan="2">
                    <asp:Button ID="Button2" runat="server" 
                        style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700" 
                        Text="Reset" onclick="Button2_Click" />
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
