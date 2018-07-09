<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="SistemaReportes.UI.Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
    <form id="form1" runat="server">
         <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div>
    <div>
        <asp:Label ID="lbNombre" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="lbContraseña" runat="server" Text="Contraseña: "></asp:Label>
        <asp:TextBox ID="txtContraseña" runat="server" class="form-control"></asp:TextBox>

         <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="btn btn-primary" />

         </div>
   <asp:Label ID="lbCategoria" runat="server" Text="Categoria: "></asp:Label>
        <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-control" Width="280"></asp:DropDownList>

         <br />
        <asp:Button ID="btnInsertar" runat="server" Text="Insertar" />
    
    
    </form>
</body>
</html>

