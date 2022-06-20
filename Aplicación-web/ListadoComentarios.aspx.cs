using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplicación_web
{
    public partial class ListadoComentarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView();
            }
        }

        protected void GridViewComentario_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewComentario.EditIndex = e.NewEditIndex;
            GridView();
        }

        protected void GridViewComentario_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridViewComentario.DataKeys[e.RowIndex].Value.ToString());
            String dniGrid = ((TextBox)GridViewComentario.Rows[e.RowIndex].Cells[0].Controls[0]).Text;
            String apellidoGrid = ((TextBox)GridViewComentario.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            String comentarioGrid = ((TextBox)GridViewComentario.Rows[e.RowIndex].Cells[2].Controls[0]).Text;

            conexionsqlDataContext db = new conexionsqlDataContext();

            var update = (from comentarios in db.comentarios where comentarios.idcomentarios == id select comentarios).Single();

            update.apellido = apellidoGrid;
            update.dni = dniGrid;
            update.comentario = comentarioGrid;

            db.SubmitChanges();  

            GridViewComentario.EditIndex = -1;
            GridView();
        }

        protected void GridView()
        {
            conexionsqlDataContext db = new conexionsqlDataContext();
            GridViewComentario.DataSource = db.comentarios;
            GridViewComentario.DataBind();
        }

        protected void GridViewComentario_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewComentario.EditIndex = -1;
            GridView();
        }

        protected void GridViewComentario_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridViewComentario.DataKeys[e.RowIndex].Value.ToString());

            conexionsqlDataContext db = new conexionsqlDataContext();

            var delete = ( from comentarios in db.comentarios where comentarios.idcomentarios == id select comentarios).Single();

            db.comentarios.DeleteOnSubmit(delete);
            db.SubmitChanges();

            GridViewComentario.EditIndex = -1;
            GridView();


        }
    }
}