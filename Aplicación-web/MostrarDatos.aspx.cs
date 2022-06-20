using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicación_web
{
    public partial class MostrarDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            conexionsqlDataContext db = new conexionsqlDataContext();
            HttpCookie cookie = Request.Cookies["usuario"];

            if (cookie != null){
                var apellicookie = cookie["Apellido"];
                var dnicookie = cookie["DNI"];
                var idcookie = Convert.ToInt32(cookie["ID"]);

                var Resultado = from alumnos in db.alumnos where alumnos.apellido == apellicookie && alumnos.dni == dnicookie && alumnos.idalumno == idcookie select alumnos;

                foreach (var Alumno in Resultado)
               
                {
                    apellidotable.Text = Alumno.apellido;
                    nombretable.Text = Alumno.nombre;
                    dnitable.Text = Alumno.dni;
                    emailtable.Text = Alumno.email;
                    turnotable.Text = Alumno.turno;
                }
            }else {
                Response.Redirect("IngresoAlumno.aspx");
            }


        }

        protected void Comentario_Click(object sender, EventArgs e)
        {
            conexionsqlDataContext db = new conexionsqlDataContext();
            HttpCookie cookie = Request.Cookies["usuario"];
            var apellidocokie = cookie["Apellido"];
            var dnicocokie = cookie["DNI"];

            db.comentarios.InsertOnSubmit(new comentarios()
            {
                comentario = comentarioform.Text,
                apellido =  apellidocokie,
                dni = dnicocokie
            });

            db.SubmitChanges();
            Response.Redirect("IngresoAlumno.aspx");
        }
    }
}