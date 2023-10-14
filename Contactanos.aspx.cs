using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YouChooseApp
{
    public partial class Contactanos : System.Web.UI.Page
    {
         string para = "youchoose1@hotmail.com";
        string asunto;
        string mensaje;
        string usuario;
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (string)(Session["sesion"]);
        }

        public void enviar()
        {
            if (!(TextBoxAsunto.Text.Trim() == ""))
            {
                asunto = TextBoxAsunto.Text;
                mensaje = TextBoxMensaje.Text + "Responder a " + TextBoxCorreo.Text + " Enviado por " + usuario;
            }
            else
            {
                Response.Write("<script>alert('Datos incorrectos');</script>");
                return;
            }
            MailMessage mail = new MailMessage();
            SmtpClient cli = new SmtpClient("smtp.live.com", 587);
            mail.To.Add(new MailAddress(this.para));
            //string asunto
            mail.From = new MailAddress("youchoose1@hotmail.com");
            mail.Subject = asunto;
            mail.Body = mensaje;
            mail.IsBodyHtml = false;
            cli.Credentials = new System.Net.NetworkCredential("youchoose1@hotmail.com", "123456asd");
            cli.EnableSsl = true;
            cli.Send(mail);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            enviar();
        }
    }
}