using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YouChooseApp
{
    public partial class Calificanos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelUsername.Text = (string)(Session["sesion"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlDataSource1.Insert();
        }

        public void Insertar(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }

    }
}