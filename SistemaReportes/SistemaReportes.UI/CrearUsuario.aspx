<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="Lec05.UI.CrearUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Crear Usuarios</h2>
        <div class="alert alert-success" visible="false" id="mensaje" runat="server">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong id="textoMensaje" runat="server"></strong>
        </div>
        <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong id="textoMensajeError" runat="server"></strong>
        </div>
    <div class="form-group">
        
        
        <asp:Label ID="lbRoles" runat="server" Text="Roles: "></asp:Label>
        <asp:TextBox ID="txtRoles" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="lbUsuario" runat="server" Text="Usuario: "></asp:Label>
        <asp:TextBox ID="txtUsuario" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="lbContra" runat="server" Text="Contraseña: "></asp:Label>
        <asp:TextBox ID="txtContra" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="lbConfirmar" runat="server" Text="Confirmar: "></asp:Label>
        <asp:TextBox ID="txtConfirmar" runat="server" class="form-control"></asp:TextBox>
        <div class="form-horizontal">
            <br />
            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" CssClass="btn btn-primary" OnClick="btnInsertar_Click" />
        </div>
    </div>
</asp:Content>

