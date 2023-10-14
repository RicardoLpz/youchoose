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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void bottonLogin()// metodo
        {
            // aqui conecto la tabla clientes 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["YouChooseConnectionString"].ConnectionString);
            conn.Open();

            String checkuser = " select count(*)  from Clientes where username='" + TextBoxUserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();

                string checkPasswordQuery = "select [password] from Clientes where username='" + TextBoxUserName.Text + "'";
                SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
                String password = passCom.ExecuteScalar().ToString().Replace(" ", "");


                if (password == TextBoxPassword.Text)
                {
                    Session["New "] = TextBoxUserName.Text;

                    Response.Write("*****************CONTRASEÑA CORRECTA HAS QUEDADO REGISTRADO **************");
                    Session.Add("sesion", TextBoxUserName.Text);
                    Response.Redirect("Reservacion.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "mal", "mal()", true);
                }


            }
            else
            {
                Response.Write("el nombre no es  correcto");
            }
            //aqui es de administrador llamo la tabla administrador hay un administrador en la base de datos y se llama admin y la contra es 12345 ahi en la base de datos dice
            conn.Open();

            String checkadmin = " select count(*)  from Administrador where username='" + TextBoxUserName.Text + "'";
            SqlCommand com1 = new SqlCommand(checkadmin, conn);
            int temp1 = Convert.ToInt32(com1.ExecuteScalar().ToString());
            conn.Close();

            if (temp1 == 1)
            {
                conn.Open();

                string checkPassQuery = "select [password] from Administrador where username='" + TextBoxUserName.Text + "'";
                SqlCommand passC = new SqlCommand(checkPassQuery, conn);
                String password1 = passC.ExecuteScalar().ToString().Replace(" ", "");


                if (password1 == TextBoxPassword.Text)
                {
                    Session["New "] = TextBoxUserName.Text;
                    Response.Write("Bienvenido");
                    Response.Redirect("Administrador.aspx");
                }
                else
                {
                    Response.Write("contraseña no  correcta");
                }


                conn.Close();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                bottonLogin();
            }

            catch
            {
                ClientScript.RegisterStartupScript(GetType(), "mal", "mal()", true);
            }
        }//termina metodo


    }
}