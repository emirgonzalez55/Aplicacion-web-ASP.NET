using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicación_web
{
    public partial class IngresoAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Eniar_Click(object sender, EventArgs e)
        {
            if (apellidoform.Text != "" || nombreform.Text != "" || dniform.Text != "" || emailform.Text != "" || turnoform.SelectedValue != "") {
                conexionsqlDataContext db = new conexionsqlDataContext();
                alumnos nalumno = new alumnos();
                nalumno.apellido = apellidoform.Text;
                nalumno.nombre = nombreform.Text;
                nalumno.dni = dniform.Text;
                nalumno.email = emailform.Text;
                nalumno.turno = turnoform.SelectedValue;

                db.alumnos.InsertOnSubmit(nalumno);
                db.SubmitChanges();
                
                HttpCookie cookie = new HttpCookie("usuario");
                cookie["Apellido"] = nalumno.apellido;
                cookie["DNI"] = nalumno.dni;
                cookie["ID"] = nalumno.idalumno.ToString();
                Response.Cookies.Add(cookie);
                Response.Redirect("MostrarDatos.aspx");
            }
            
        }

    }
}