using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
public partial class EmailDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_sendmail_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com",587);
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;

            client.Credentials = new NetworkCredential("", "");
            MailMessage mm = new MailMessage();
            mm.To.Add("ravimane287@gmail.com");
            mm.From = new MailAddress("mahendramanem17@gmail.com");
            mm.Subject = "Hello";
            mm.Body = "Welcome to asp.net";
            client.Send(mm);
            Response.Write("message sent!!!");

        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}