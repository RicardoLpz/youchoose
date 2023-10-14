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
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBoxPassword.Text == TextBoxPassword2.Text)
            {


                try
                {
                    SqlDataSource1.Insert();
                    CleanControl(this.Controls);
                    ClientScript.RegisterStartupScript(GetType(), "Exitoso", "Exitoso()", true);
                    Server.Transfer("~/Login.aspx");

                }

                catch
                {
                    ClientScript.RegisterStartupScript(GetType(), "mal", "mal()", true);
                }
            }

            else
            {
                ClientScript.RegisterStartupScript(GetType(), "No coinciden", "NoCoinciden()", true);
            }
        }


        public void bottonEnviar()
        {

            if (IsPostBack)
            {
                try
                {
                    // Guid newGUID = Guid.NewGuid(); // id unique en caso de querer usarlo activarlo pero automaticamente pone uno 
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["YouChooseConnectionString"].ConnectionString);
                    conn.Open();
                    // aqui se capturan en los texbox 
                    String insertQuery = "insert into Clientes(username,[password],nombre,correoElectronico,Direccion) values (@user,@password,@nom,@corr,@dir)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@user", TextBoxUserName.Text);
                    com.Parameters.AddWithValue("@nom", TextBoxNombre.Text);
                    com.Parameters.AddWithValue("@password", TextBoxPassword.Text);
                    com.Parameters.AddWithValue("@corr", TextBoxCorreo.Text);
                    com.ExecuteNonQuery();
                    conn.Close();
                    CleanControl(this.Controls);
                    ClientScript.RegisterStartupScript(GetType(), "Exitoso", "Exitoso()", true);
                }
                catch
                {
                    ClientScript.RegisterStartupScript(GetType(), "mal", "mal()", true);
                }
            }
        }

        public void CleanControl(ControlCollection controles)
        {
            foreach (Control control in controles)
            {
                if (control is TextBox)
                    ((TextBox)control).Text = string.Empty;
                else if (control is DropDownList)
                    ((DropDownList)control).ClearSelection();
                else if (control is RadioButtonList)
                    ((RadioButtonList)control).ClearSelection();
                else if (control is CheckBoxList)
                    ((CheckBoxList)control).ClearSelection();
                else if (control is RadioButton)
                    ((RadioButton)control).Checked = false;
                else if (control is CheckBox)
                    ((CheckBox)control).Checked = false;
                else if (control.HasControls())
                    //Esta linea detécta un Control que contenga otros Controles
                    //Así ningún control se quedará sin ser limpiado.
                    CleanControl(control.Controls);
            }


        }



    }
}