using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YouChooseApp
{
    public partial class Confirmacion : System.Web.UI.Page
    {
        string usuario;
        string mesa;
        string sucursal;
        string fecha;
        string hora;
        string nombre;
        int contador;
        protected void Page_Load(object sender, EventArgs e)
        {
            contador = Convert.ToInt16(GridView1.Rows[0].Cells[0].Text) + 1;
            usuario = (string)(Session["sesion"]);
            mesa = (string)(Session["mesa"]);
            sucursal = (string)(Session["sucursal"]);
            hora = (string)(Session["hora"]);
            fecha = (string)(Session["fecha"]);


            LabelID.Text = (contador).ToString();
            LabelID.Visible = false;
            LabelFecha.Text = fecha;
            LabelHora.Text = hora;
            LabelUsuario.Text = usuario;
            LabelMesa.Text = mesa;
            LabelSucursal.Text = sucursal;
            nombre = (GridViewNombre.Rows[0].Cells[0].Text);
            LabelNombre.Text = nombre;

            LabelUsuario.Visible = false;
            GridView1.Visible = false;
            GridViewNombre.Visible = false;


        }

        protected void ButtonCancelar_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Principal.aspx");
        }

        protected void ButtonAceptar_Click(object sender, EventArgs e)
        {
            //try
            //{
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["YouChooseConnectionString"].ConnectionString);
            conn.Open();

            String checkcard = " select count(*)  from Tarjeta where NumeroTarjeta='" + TextBoxTarjeta.Text + "' and Clave='" + TextBoxCodigoSeguridad.Text + "' and Nombre='" + TextBoxNombreTarjeta.Text + "'";
            SqlCommand com = new SqlCommand(checkcard, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                SqlDataSourceAlta.Insert();
                Session.Add("Nombre", LabelNombre.Text);
                Session.Add("ID", LabelID.Text);
                Session.Add("Tarjeta", TextBoxTarjeta.Text);


                Server.Transfer("~/Recibo.aspx");
            }

            else
            {
                Response.Write("Tarjeta no valida");
            }
            //}

            //catch
            //{

            //}
        }

    }

}
