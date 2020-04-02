using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GridViewDemo : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    SqlCommand cmd;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            GVBind();
            clear();
        }
    }
    public void clear()
    {
        txtname.Text = "";
        txtsalary.Text = "";
        txtspl.Text = "";
        txtmob.Text = "";
        txtemail.Text = "";

    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        try
        {
            using (con = new SqlConnection(strcon))
            {
                con.Open();
                cmd = new SqlCommand("Insert into DoctorDetails values('" + txtname.Text + "','" + txtsalary.Text + "','" + txtspl.Text + "','" + txtmob.Text + "','" + txtemail.Text + "')", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('Data Submitted Successfully !!!')</script>");
                    clear();
                    GVBind();

                }
                else
                {
                    Response.Write("<script>alert('Oops Something went wrong!!!')</script>");

                }
                con.Close();
            }
        }
        catch(Exception ex)
        {
            Response.Write("<script>alert('Oops Something went wrong!!!')</script>");

        }


    }
    protected void GVBind()
    {
        using (con = new SqlConnection(strcon))
        {
            con.Open();
            cmd = new SqlCommand("select * from DoctorDetails",con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows == true)
            {
                GridView1.DataSource = sdr;
                GridView1.DataBind();
            }
        }
    }
    protected void grd_edit(object sender,GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GVBind();
    }

    protected void grd_update(object sender, GridViewUpdateEventArgs e)

    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        string DocotorName = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;

        string Salary = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string Speciality = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string MobileNumber = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string EmailId = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        using (con = new SqlConnection(strcon))
        {
            con.Open();
            cmd = new SqlCommand("Update DoctorDetails set DoctorName='" + DocotorName + "',Salary='" + Salary + "',Specialty='" + Speciality + "',MobileNumber='" + MobileNumber + "',EmailId='" + EmailId + "' where DoctorId='" + id + "'", con);
            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data Updated  Successfully !!!')</script>");

                GridView1.EditIndex = -1;

                GVBind();
            }
            else
            {
                Response.Write("<script>alert('Oops Something went wrong!!!')</script>");

            }
            con.Close();

        }
    }

    protected void grd_cancel(object sender,GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GVBind();
    }

    protected void grd_delete(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        using (con = new SqlConnection(strcon))
        {
            con.Open();
            cmd = new SqlCommand("delete from DoctorDetails where DoctorId='" + id + "' ", con);

            int t = cmd.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Data Deleted  Successfully !!!')</script>");

                GridView1.EditIndex = -1;

                GVBind();
            }
            else
            {
                Response.Write("<script>alert('Oops Something went wrong!!!')</script>");

            }
            con.Close();
        }
    }
    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.GVBind();
    }

}