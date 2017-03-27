<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 60%;
        }
        .style11
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style10" align="center">
        <tr>
            <td colspan="2" 
                style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: 700; color: #000000">
                Login</td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; color: #000000">
                Username</td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Username Required" ForeColor="Black"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Only Algebric and Numeric Used" 
                    ForeColor="Black" ValidationExpression="[a-z A-Z 0-9]{1,40}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; color: #000000">
                Password</td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Password Required" ForeColor="Black"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11" 
                style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; color: #000000">
                <asp:Button ID="Button1" runat="server" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700" 
                    Text="Login" onclick="Button1_Click" />
            </td>
            <td class="style11" style="text-align: center">
                <asp:Button ID="Button2" runat="server" Text="Reset" 
                    
                    style="font-size: x-large; font-family: 'Times New Roman', Times, serif; font-weight: 700" 
                    onclick="Button2_Click" />
            &nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11" 
                
                style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700; color: #000000" 
                colspan="2">
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/Default4.aspx" 
            style="font-size: large; font-family: 'Times New Roman', Times, serif; color: #000000">Need an acount?Sign in?</asp:LinkButton>
            </td>
        </tr>
    </table>
<p style="font-family: SimHei; font-weight: 700; font-size: x-large;">
        &nbsp;</p>
    <p style="font-family: SimHei; font-weight: 700; font-size: x-large;">
        &nbsp;</p>
<p style="font-family: SimHei; font-weight: 700; font-size: x-large;">
        <br />
</p>
</asp:Content>

