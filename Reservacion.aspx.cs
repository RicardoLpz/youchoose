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
    public partial class Reservacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sesion;
            LabelFecha.Visible = false;
            sesion = (string)(Session["sesion"]);

            LabelUsuario.Text = sesion;
            GridView1.Visible = false;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            LabelFecha.Visible = true;
            LabelFecha.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void ButtonAceptar_Click(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["YouChooseConnectionString"].ConnectionString);
            //conn.Open();
            //String ID = "select count(*) from Reservacion where IDSucursal=' " + DropDownListSucursal.SelectedValue + " 'and IDMesa=' " + DropDownListMesa.SelectedValue + " 'AND Fecha='" + Calendar1.SelectedDate+"'AND HORA=' " + DropDownListHora.SelectedValue + "'";
            //SqlCommand com = new SqlCommand(ID, conn);
            ////int temp = Convert.ToInt32(com.ExecuteScalar());

            //if (temp == 1)
            //{
            //    ClientScript.RegisterStartupScript(GetType(), "Ocupado", "Ocupado()", true);
            //}

            //else
            {



                Session.Add("sesion", LabelUsuario.Text);
                Session.Add("sucursal", DropDownListSucursal.SelectedValue);
                Session.Add("fecha", LabelFecha.Text);
                Session.Add("hora", DropDownListHora.SelectedValue);
                Session.Add("Mesa", DropDownListMesa.SelectedValue);

                Server.Transfer("~/Confirmacion.aspx");
            }
        }
    }
}