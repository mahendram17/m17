using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    SqlCommand cmd;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
      
        try
        {
            //SqlConnection con = new SqlConnection("data source=DESKTOP-M2RNCB7\\SQLEXPRESS;Initial Catalog=Infosys ;User ID=sa;Password=Sa@12345");
            //create new sqlconnection and connection to database by using connection string from web.config file  
           // SqlConnection con = new SqlConnection(strcon);
           // SqlCommand cmd = new SqlCommand("select * from dbo.employees ", con);
          //  con.Open();

          //  SqlDataReader rdr = cmd.ExecuteReader();
          //  GridView1.DataSource = rdr;
          //  GridView1.DataBind();
          //  con.Close();
        }
        
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void btn_insert(object sender, EventArgs e)
    {
        try
        {
            //SqlConnection con = new SqlConnection("data source=DESKTOP-M2RNCB7\\SQLEXPRESS;Initial Catalog=Infosys ;User ID=sa;Password=Sa@12345");
            //create new sqlconnection and connection to database by using connection string from web.config file  
            con = new SqlConnection(strcon);
            cmd = new SqlCommand("insertdata", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@emp_id", t_id.Text);
            cmd.Parameters.AddWithValue("@first_name", f_name.Text);
            cmd.Parameters.AddWithValue("@last_name", l_name.Text);


            con.Open();
            cmd.ExecuteNonQuery();

            //  SqlDataReader rdr = cmd.ExecuteReader();
            //  GridView1.DataSource = rdr;
            //  GridView1.DataBind();
              con.Close();
            read_data();
        }

        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    public void read_data()
    {
        con = new SqlConnection(strcon);
        cmd = new SqlCommand("select * from dbo.employees", con);
        con.Open();
         SqlDataReader rdr = cmd.ExecuteReader();
         GridView1.DataSource = rdr;
         GridView1.DataBind();
       //  con.Close();
    }

   
}