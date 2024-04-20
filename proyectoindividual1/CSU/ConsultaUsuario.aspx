<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaUsuario.aspx.cs" Inherits="proyectoindividual1.CSU.ConsultaUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="imgUsuario" runat="server" />
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Titulo:"></asp:Label>
            <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
        </p>
        Nombres:<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <p>
            Apellidos:<asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        </p>
        Usuario:<asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <p>
            Contraseña:<asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnConsultar" runat="server" OnClick="btnConsultar_Click" style="height: 29px" Text="Consultar" />
        </p>
    </form>
</body>
</html>
