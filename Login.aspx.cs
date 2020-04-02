using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(strcon);
        cmd = new SqlCommand("Select * from tbl_UsersDetails where First_Name=@First_Name and Password=@password", con);
        cmd.Parameters.AddWithValue("@First_Name", un.Text);
        cmd.Parameters.AddWithValue("@password", pwd.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        if (dt.Rows.Count > 0)
        {
            Session["un"] = un.Text;
            Response.Redirect("Welcome.aspx?username="+un.Text+"");
        }
        else
        {
            lbl.Text = "Your username and word is incorrect";
            lbl.ForeColor = System.Drawing.Color.Red;

        }


    }
}