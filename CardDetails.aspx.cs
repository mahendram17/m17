using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CardDetails : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_register(object sender,EventArgs e)
    {
        con = new SqlConnection(strcon);
        cmd = new SqlCommand("proc_registeration1", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("First_Name",txt_fn.Text);
        cmd.Parameters.AddWithValue("Last_Name", txt_ln.Text);
        cmd.Parameters.AddWithValue("Password", txt_pwd.Text);
        cmd.Parameters.AddWithValue("Email", txt_email.Text);
        cmd.Parameters.AddWithValue("Mobile_number", txt_mobile.Text);
        cmd.Parameters.AddWithValue("Current_address", txt_add.Text);
        cmd.Parameters.AddWithValue("DOB", txt_dob.Text);
        cmd.Parameters.AddWithValue("Gender", gender.SelectedValue);
        cmd.Parameters.AddWithValue("Country", dd_country.SelectedValue);
        con.Open();
      int i=  cmd.ExecuteNonQuery();
        if (i > 0) 
        {
            lbl_success.Text = "Data Submitted successfully";
            con.Close();
            Response.Redirect("Login.aspx");
        }
        else
        {
           

            lbl_error.Text = "Please insert data properly";
            con.Close();

        }

    }
}