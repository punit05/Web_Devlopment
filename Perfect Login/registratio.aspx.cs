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

public partial class registratio : System.Web.UI.Page
{
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataReader dtr;
    protected void Page_Load(object sender, EventArgs e)
    {
         cn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=D:\\PL.mdb");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        cn.Open();
        cmd=new OleDbCommand("select * from Login where [Uname]='"+ TextBox1.Text+"'",cn);
            dtr=cmd.ExecuteReader();
        if(dtr.Read())
        {
            Label1.Visible=true;
            Label1.Text="Username already Exist";
            TextBox1.Text = " ";
            TextBox1.Focus();
        }
        else
        {
            Label1.Visible = false;
            TextBox2.Focus();
        }
        dtr.Close();
        cn.Close();
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    cn.Open();
    string sa="insert into Login values('"+TextBox1.Text+"','"+TextBox3.Text+"','"+DropDownList1.Text+"','"+TextBox4.Text+"')";
    cmd=new OleDbCommand(sa,cn);
    cmd.ExecuteNonQuery();
    TextBox1.Text=" ";
    TextBox2.Text=" ";
    TextBox3.Text=" ";
    DropDownList1.Enabled = true;
    DropDownList1.SelectedIndex = 0;
    TextBox4.Text=" ";
    cn.Close();

}
protected void  Button2_Click(object sender, EventArgs e)
{
    TextBox1.Text=" ";
    TextBox2.Text=" ";
    TextBox3.Text=" ";
    DropDownList1.SelectedIndex = 0;
    TextBox4.Text=" ";
    TextBox1.Focus();
}
}
