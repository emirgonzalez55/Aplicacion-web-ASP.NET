<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoAlumno.aspx.cs" Inherits="Aplicación_web.IngresoAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="CSS/Estilos.css">
    <title>Ingreso alumno</title>
</head>
<body>
    <form id="form1" runat="server"  method="post" >
        <div>
            <table border="1">
                <tr>
                    <td class="titulo" colspan="5"><asp:Label CssClass="enfocada" Text="Datos personales" runat="server" /></td>
                </tr>
                 <tr>
                    <td rowspan="2"><asp:Label CssClass="obligatorio" Text="Datos obligatorios" runat="server" /> </td>
                    <td><asp:Label CssClass="obligatorio" Text="Apellido" runat="server" /></td>
                     <td><asp:TextBox ID="apellidoform" CssClass="desenfocada" runat="server" /></td>
                    <td><asp:Label CssClass="obligatorio" Text="Nombre" runat="server" /></td>
                     <td><asp:TextBox ID="nombreform" CssClass="desenfocada"  runat="server" /></td>
                </tr>
                <tr>
                    <td><asp:Label CssClass="obligatorio" Text="DNI" runat="server" /></td>
                     <td><asp:TextBox ID="dniform" CssClass="desenfocada"  runat="server" /></td>
                    <td><asp:Label CssClass="obligatorio" Text="E-Mail" runat="server" /></td>
                     <td><asp:TextBox ID="emailform" CssClass="desenfocada"  runat="server" /></td>
                </tr>
                <tr>
                    <td><asp:Label CssClass="preferencias" Text="Preferecias" runat="server" /></td>
                    <td><asp:Label CssClass="preferencias" Text="Turno" runat="server" /></td>
                    <td colspan="3"><asp:DropDownList CssClass="desenfocada"  ID="turnoform" runat="server">                                
                            <asp:ListItem Text="Seleccione Turno" Value="" />
                            <asp:ListItem Text="Mañana" Value="mañana"  />
                            <asp:ListItem Text="Tarde" Value="tarde" />
                            <asp:ListItem Text="Noche" Value="noche" />
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="botones" colspan="5"><asp:Button CssClass="botones" Text="Enviar" runat="server" OnClick="Eniar_Click" /> <input class="botones" type="reset" value="Limpiar" /></td>
                </tr>
            </table>
        </div>  
    </form> 
    <script src="JS/validaciones.js"></script>
</body>
</html>
