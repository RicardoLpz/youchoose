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
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            Eliminar();
            
        }

        public void Eliminar(){
       
	     SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["YouChooseConnectionString"].ConnectionString);
         conn.Open();
          String ID = " select count(*) from  Reservacion where IDReservacion='" +TextBox1.Text + "'";
         SqlCommand com = new SqlCommand(ID, conn);
          int temp = Convert.ToInt32(com.ExecuteScalar());

        if (temp==1)
        {
            Label2.Visible = false;
            Label2.Text = TextBox1.Text;
            SqlDataSource2.Delete();
            GridView1.DataBind();
            TextBox1.Text = "";
            ClientScript.RegisterStartupScript(GetType(), "Bien", "Bien()", true);
        }

        else
        {
            ClientScript.RegisterStartupScript(GetType(), "mal", "mal()", true);
        }



    }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        }
}
    }