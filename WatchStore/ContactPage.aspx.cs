using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WatchStore
{
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //string name = Name.Text;
            //string email = Email.Text;
            //string phone = Phone.Text;
            //string address = Address.Text;
            //string message = Message.Text;

            //// You can process the data here, e.g., send an email
            //try
            //{
            //    MailMessage mailMessage = new MailMessage();
            //    mailMessage.From = new MailAddress("your-email@example.com");
            //    mailMessage.To.Add("destination-email@example.com");
            //    mailMessage.Subject = "Contact Form Submission";
            //    mailMessage.Body = $"Name: {name}\nEmail: {email}\nPhone: {phone}\nAddress: {address}\nMessage: {message}";

            //    SmtpClient smtpClient = new SmtpClient("your-smtp-server");
            //    smtpClient.Send(mailMessage);

            //    // Display success message or redirect
            //}
            //catch (Exception ex)
            //{
            //    // Handle exception
            //}
        }
    }
}