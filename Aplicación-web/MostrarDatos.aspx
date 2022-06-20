<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDatos.aspx.cs" Inherits="Aplicación_web.MostrarDatos" %>

 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mostrar Datos</title>
</head>
<body>
    <form id="form2" runat="server" >
        <div style="margin:auto; text-align:center;">
            <h1>Datos recibidos</h1>
            <table border="1" style="margin:auto; text-align:center;">
                <tr>
                    <td><asp:Label Text="Apellido: " ID="Label1" runat="server" /> <asp:Label Text="" ID="apellidotable" runat="server" /></td>
                    <td><asp:Label Text="Nombre: "  runat="server" /> <asp:Label Text="" ID="nombretable" runat="server" /></td>
                    <td><asp:Label Text="DNI: " ID="Label4" runat="server" /> <asp:Label Text="" ID="dnitable" runat="server" /></td>
                    <td><asp:Label Text="E-Mail: " ID="Label6" runat="server" /> <asp:Label Text="" ID="emailtable" runat="server" /></td>
                    <td><asp:Label Text="Turno: " ID="Label8" runat="server" /> <asp:Label Text="" ID="turnotable" runat="server" /></td>
                </tr>
            </table>
            <h3>Comentarios</h3>
            <asp:TextBox style="width:30%; height:10%;" ID="comentarioform" TextMode="MultiLine"  runat="server" />
            <br/>
            <asp:Button Text="Enviar"  runat="server" OnClick="Comentario_Click" />
        </div>
    </form> 
    <script src="JS/validaciones.js"></script>
</body>
</html>
