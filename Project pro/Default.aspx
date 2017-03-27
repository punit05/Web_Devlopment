<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body background="NewFolder1/dunbo_of_steel-wallpaper-1366x768.jpg" 
    style="font-size: xx-large; font-weight: 700; color: #E3509B">
    <form id="form1" runat="server">
    <div style="text-align: center; font-family: 'Adobe Caslon Pro'; font-size: xx-large; color: #5B5941; font-style: italic; text-decoration: underline; font-weight: 700">
    
        Welcome To Vertigo Drawing</div>
    <p style="text-align: center">
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Default2.aspx" style="color: #334331">Login</asp:LinkButton>
    </p>
    </form>
</body>
</html>
