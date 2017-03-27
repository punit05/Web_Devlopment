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

public partial class Default4 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection cn;
        OleDbCommand cmd;
        cn = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0;Data Source=D:\\vertigo1.mdb");

        cn.Open();
        string sa = "insert into record values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','"+TextBox2.Text+"'," + TextBox3.Text + ",'" + TextBox4.Text + "')";
        cmd = new OleDbCommand(sa, cn);
        cmd.ExecuteNonQuery();
        TextBox1.Text = " ";
        TextBox5.Text = " ";
        TextBox6.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = " ";
        Label1.Visible = true;
        Label1.Text = "Record inserted";
        TextBox1.Text = " ";
        TextBox5.Text = " ";
        TextBox6.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = " ";
        TextBox1.Focus();

        cn.Close();
    }
}
