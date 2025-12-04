using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Account
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string username = Membership.GetUserNameByEmail(email);
            if (username != null)
            {
                MembershipUser user = Membership.GetUser(username);
                string newPassword = user.ResetPassword(); // direktes neues Passwort

                /*using (var client = new SmtpClient()) // zieht Settings aus web.config
                {
                    var msg = new MailMessage("noreply@deineapp.ch", email);
                    msg.Subject = "Neues Passwort";
                    msg.Body = $"Dein neues Passwort lautet: {newPassword}";
                    client.Send(msg);
                }*/

                using (var client = new SmtpClient()) // zieht host, port, userName aus web.config
                {
                    // Passwort aus Umgebungsvariable ergänzen
                    string smtpPass = Environment.GetEnvironmentVariable("SMTP_PASS");

                    // vorhandenen UserName aus der Config holen
                    string smtpUser = client.Credentials is NetworkCredential cred ? cred.UserName : null;

                    client.Credentials = new System.Net.NetworkCredential(smtpUser, smtpPass);
                    client.EnableSsl = true;

                    var msg = new MailMessage(smtpUser, email);
                    msg.Subject = "Neues Passwort";
                    msg.Body = $"Dein neues Passwort lautet: {newPassword}";
                    client.Send(msg);
                }

                lblMessage.Text = "Ein neues Passwort wurde an deine E-Mail-Adresse gesendet.";
            }
            else
            {
                lblMessage.Text = "Kein Benutzer mit dieser E-Mail gefunden.";
            }
        }
    }
}