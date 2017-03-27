using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

public partial class CHANGE_password : System.Web.UI.Page
{
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=D:\\PL.mdb");
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        cn.Open();
        cmd=new OleDbCommand("select * from Login where[Pass]='"+TextBox2.Text+"'",cn);
            dtr=cmd.ExecuteReader();
        if(dtr.Read())
        {
            Panel1.Visible=true;
            TextBox5.Focus();
        }
        else
        {
            Label1.Text="Username or Password is incorrect";
        }
        dtr.Close();
        cn.Close();

    }
protected void  Button3_Click(object sender, EventArgs e)
{
    cn.Open();
    cmd=new OleDbCommand(" update Login set pass='"+TextBox6.Text+"' where [Uname]='"+TextBox1.Text+"'",cn);
    cmd.ExecuteNonQuery();
    Label2.Visible=true;
    Label2.Text="Password is updated";
    cn.Close();
}
}
