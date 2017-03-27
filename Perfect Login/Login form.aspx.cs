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
public partial class Login_form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection cn;
        OleDbCommand cmd;
        OleDbDataReader dtr;
         cn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=D:\\PL.mdb");
        cn.Open();
        cmd = new OleDbCommand("select * from Login where [Uname]='" + TextBox1.Text + "' and [Pass]='"+TextBox2.Text+"'",cn);

        dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Response.Redirect("welcome page.aspx");
        }
        else
        {
            TextBox1.Text=" ";
            TextBox2.Text=" ";
            Label2.Visible=true;
            Label2.Text="Record not Found";
            TextBox1.Focus();
        }
        dtr.Close();
        cn.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox1.Focus();
    }
}
