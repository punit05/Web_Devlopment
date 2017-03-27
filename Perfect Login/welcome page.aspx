<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome page.aspx.cs" Inherits="welcome_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="NewFolder1/castle_series_stana_katic_nathan_fillion_99120_1366x768.jpg">
    <form id="form1" runat="server">
    <div align=center 
        style="font-size: xx-large; font-weight: 700; font-family: DotumChe; color: #FF3300">
    
        Welcome Page</div>
    <p style="text-align: right">
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Login form.aspx" 
            style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: 700" 
            Text="HOME" />
    </p>
    </form>
</body>
</html>
