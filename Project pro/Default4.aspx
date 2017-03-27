<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 60%;
        }
    .style9
    {
        height: 30px;
    }
    .style10
    {
        height: 28px;
        text-align: left;
        font-family: "Times New Roman", Times, serif;
        font-size: large;
        font-weight: 700;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style8" align=center bgcolor="#97743A">
    
        <tr>
            <td colspan="2" 
                style="font-weight: 700; font-size: xx-large; font-family: 'Times New Roman', Times, serif; color: #000000">
                SIGN IN
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #000000">
                Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Username Required" 
                    style="color: #000000">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Only Character and Numeric used" 
                    ForeColor="Black" ValidationExpression="[a-z A-Z 0-9]{1,40}">*</asp:RegularExpressionValidator>
            &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #000000">
                Password</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" CausesValidation="True"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Password Required" ForeColor="Black">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox5" 
                    ErrorMessage="Length should be between 6-10 character and only character and numeric used" 
                    ForeColor="Black" ValidationExpression="[a-z A-Z 0-9]{6,10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #000000">
                Confirm Password</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CausesValidation="True"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Password Required" ForeColor="Black">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                    ControlToValidate="TextBox5" 
                    ErrorMessage="Length should be between 6-10 character and only character and numeric used" 
                    ForeColor="Black" ValidationExpression="[a-z A-Z 0-9]{6,10}">*</asp:RegularExpressionValidator>
&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
                    ErrorMessage="Both password not matched." ForeColor="Black">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #000000">
                Email ID</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CausesValidation="True"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Email ID Required" 
                    style="color: #000000">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Invalid Email Format" 
                    ForeColor="Black" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #000000">
                Mobile Number</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Mobile Number Required" style="color: #000000" 
                    ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="10 Digits Only" ForeColor="Black" 
                    ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #000000" 
                class="style10">
                Address</td>
            <td class="style10">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Address Required" 
                    style="color: #000000; text-align: center;" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Only Character and Numeric Used " 
                    ForeColor="Black" ValidationExpression="[a-z A-Z 0-9]{1,100}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #000000; text-align: center;" 
                colspan="2">
                <asp:Button ID="Button1" runat="server" BorderStyle="Solid" 
                    style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700" 
                    Text="SIGN UP" onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" 
                style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #000000">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Black" 
                    HeaderText="Errors" />
            </td>
        </tr>
        </table>
   
</asp:Content>

