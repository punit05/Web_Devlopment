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

public partial class Forgetpassword : System.Web.UI.Page
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
        cmd = new OleDbCommand("select * from Login where [Uname]='" + TextBox1.Text + "'", cn);
        dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Label2.Visible = true;
            Label2.Text = (string)dtr["Question"]; 
            TextBox5.Focus();
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Username Not Found";
            
           // TextBox1.Text = " ";
        }
        dtr.Close();
        cn.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new OleDbCommand("select * from Login where[Uname]='"+TextBox1.Text +"' and [Ans]='" + TextBox5.Text + "'", cn);
        dtr = cmd.ExecuteReader();
        if (dtr.Read())
        {
            Label3.Visible = true;
            Label3.Text = (string)dtr["Pass"];
            Label1.Visible = false;
        }
        else
        {
            Label4.Visible = true;
            Label4.Text = "Answer is Wrong";
         //   TextBox5.Text = " ";
           // Label4.Visible = false;
        }
    //    Label4.Visible = false;
        dtr.Close();
        dtr.Close();
    }
}
