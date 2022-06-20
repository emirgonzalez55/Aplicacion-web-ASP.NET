<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoComentarios.aspx.cs" Inherits="Aplicación_web.ListadoComentarios"    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Comentarios</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; margin:auto;">
            <h1>Lista de comentarios</h1>
            <asp:GridView style=" margin:auto; text-align:start;" ID="GridViewComentario" runat="server" AutoGenerateColumns="False" OnRowEditing="GridViewComentario_RowEditing" OnRowUpdating="GridViewComentario_RowUpdating" DataKeyNames="idcomentarios" OnRowCancelingEdit="GridViewComentario_RowCancelingEdit" OnRowDeleting="GridViewComentario_RowDeleting"   >
                <Columns>
                    <asp:BoundField DataField="dni" HeaderText="DNI" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                    <asp:BoundField DataField="comentario" HeaderText="Comentario" />

                    <asp:CommandField ButtonType="Button" HeaderText="Editar" ShowEditButton="True"  />
                    <asp:CommandField ButtonType="Button" HeaderText="Eliminar" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
          
        </div>
    </form>
</body>
</html>
