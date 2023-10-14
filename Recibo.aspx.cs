using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YouChooseApp
{
    public partial class Recibo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelIDReservacion.Text = (string)(Session["ID"]);
            LabelNombre.Text = (string)(Session["Nombre"]);
            LabelSucursal.Text = (string)(Session["sucursal"]);
            LabelMesa.Text = (string)(Session["Mesa"]);
            LabelFecha.Text = (string)(Session["fecha"]);
            LabelHora.Text = (string)(Session["hora"]);
            LabelCargo.Text = "$50.00 pesos";
            LabelUsername.Text = (string)(Session["sesion"]);
            LabelUsername.Visible = false;
            GridViewCorreo.Visible = false;
            LabelTarjeta.Text = (string)(Session["Tarjeta"]);
        }


        public void PDF()
        {
            Document recibo = new Document(PageSize.A4, 10, 10, 10, 10);

            try
            {
                PdfWriter.GetInstance(recibo, System.Web.HttpContext.Current.Response.OutputStream);

                //Abrir el pdf para editar 
                recibo.Open();
                //Escribir en el pdf
                recibo.Add(new Paragraph("------------------------------------"));
                recibo.Add(new Paragraph("YOUCHOOSE"));
                recibo.Add(new Paragraph("------------------------------------"));
                recibo.Add(new Paragraph("RECIBO DE PAGO"));
                recibo.Add(new Paragraph("------------------------------------"));
                recibo.Add(new Paragraph("Numero de Reservación: " + LabelIDReservacion.Text));
                recibo.Add(new Paragraph("Nombre de Usuario:  " + LabelNombre.Text));
                recibo.Add(new Paragraph("Sucursal: " + LabelSucursal.Text));
                recibo.Add(new Paragraph("Mesa: " + LabelMesa.Text));
                recibo.Add(new Paragraph("Fecha de Reservacion: " + LabelFecha.Text));
                recibo.Add(new Paragraph("Hora de Reservacion: " + LabelHora.Text));
                recibo.Add(new Paragraph("Numero de tarjeta: " + LabelTarjeta.Text));
                recibo.Add(new Paragraph("Cargo: " + LabelCargo.Text));
                recibo.Add(new Paragraph("Este recibo es un comprobante de la transacción realizada para poder reservar su mesa, muchas gracias por usar nuestro servicio de Reservaciones online"));


                //Cerrar escritura
                recibo.Close();

                Response.ContentType = "application/pdf";

                //Nombrar archivo
                Response.AddHeader("content-disposition", "attachment; filename=ReciboYouChoose.pdf");
                System.Web.HttpContext.Current.Response.Write(recibo);

                Response.Flush();
                Response.End();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }//Aqui termina el proceso de PDF
        }


        public void Correo()
        {
            {
                //Creamos variables de las clases para el correo y el cliente que recibe el correo.
                MailMessage correo = new MailMessage();
                SmtpClient cliente = new SmtpClient();

                //aqui tomamos el correo de la base de datos
                String email = GridViewCorreo.Rows[0].Cells[0].Text;
                String cuerpo =
                   "YOUCHOOSE\n" +
                    "------------------------------------\n" +
                    "RECIBO DE PAGO\n" +
                    "------------------------------------\n" +
                    "Numero de Reservación: " + LabelIDReservacion.Text + "\n" +
                    "Nombre de Usuario:  " + LabelNombre.Text + "\n" +
                    "Sucursal: " + LabelSucursal.Text + "\n" +
                    "Mesa: " + LabelMesa + "\n" +
                    "Fecha de Reservacion: " + LabelFecha.Text + "\n" +
                    "Hora de Reservacion: " + LabelHora.Text + "\n" +
                    "Numero de tarjeta: " + LabelTarjeta + "\n" +
                    "Cargo: " + LabelCargo.Text + "\n" +
                    "Este recibo es un comprobante de la transacción realizada para poder reservar su mesa, muchas gracias por usar nuestro servicio de Reservaciones online";

                correo.From = new MailAddress("youchoosemail@gmail.com");
                correo.To.Add(new MailAddress(email));

                correo.Subject = "TU RECIBO DE PAGO";
                correo.Body = cuerpo;
                correo.IsBodyHtml = false;

                //configurar cliente SMTP
                cliente.Host = "smtp.gmail.com";
                cliente.Port = 587;
                cliente.Credentials = new NetworkCredential("youchoosemail@gmail.com", "youSOFT7");
                cliente.EnableSsl = true;
                cliente.Send(correo);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PDF();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Correo();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "Impresion", "ImprimirRecibo()", true);
        }

        


    }
}