<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <p>
        normal view=====</p>
    <form id="form1" runat="server">
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Uname" 
            DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" 
            PageSize="3">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="Uname" HeaderText="Uname" ReadOnly="True" 
                    SortExpression="Uname" />
                <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                <asp:BoundField DataField="Question" HeaderText="Question" 
                    SortExpression="Question" />
                <asp:BoundField DataField="Ans" HeaderText="Ans" SortExpression="Ans" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource3" runat="server">
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="d:\\pl.mdb" SelectCommand="SELECT * FROM [Login]">
        </asp:AccessDataSource>
    </p>
    <p>
        particulor view----</p>
    <p>
        &nbsp;</p>
    <p>
        user name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="Uname" DataSourceID="AccessDataSource4" 
            GridLines="Vertical" Height="50px" Width="125px">
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="Uname" HeaderText="Uname" ReadOnly="True" 
                    SortExpression="Uname" />
                <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                <asp:BoundField DataField="Question" HeaderText="Question" 
                    SortExpression="Question" />
                <asp:BoundField DataField="Ans" HeaderText="Ans" SortExpression="Ans" />
            </Fields>
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#DCDCDC" />
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
            DataFile="D:\\PL.mdb" SelectCommand="SELECT * FROM [Login] WHERE ([Uname] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Uname" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="d:\\pl.mdb" SelectCommand="SELECT * FROM [Login] WHERE ([Uname] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Uname" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
    <p>
        session call report--</p>
    <p>
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="Uname" DataSourceID="AccessDataSource6" 
            ForeColor="Black" GridLines="Horizontal" Height="50px" Width="125px">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <Fields>
                <asp:BoundField DataField="Uname" HeaderText="Uname" ReadOnly="True" 
                    SortExpression="Uname" />
                <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                <asp:BoundField DataField="Question" HeaderText="Question" 
                    SortExpression="Question" />
                <asp:BoundField DataField="Ans" HeaderText="Ans" SortExpression="Ans" />
            </Fields>
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DetailsView>
        <asp:AccessDataSource ID="AccessDataSource6" runat="server" 
            DataFile="d:\\pl.mdb" SelectCommand="SELECT * FROM [Login] WHERE ([Uname] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="Uname" SessionField="un" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource5" runat="server" 
            DataFile="d:\\pl.mdb" SelectCommand="SELECT * FROM [Login] WHERE ([Uname] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="Uname" SessionField="un" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>
