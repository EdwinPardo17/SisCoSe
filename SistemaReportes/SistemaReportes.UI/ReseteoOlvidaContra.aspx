<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReseteoOlvidaContra.aspx.cs" Inherits="SistemaReportes.UI.ReseteoOlvidaContra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <style>
       body {
    background-color: #13A7FF;
    color: black;
      }

   </style>

     <br />
    <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
    <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div>

     <style>
        .form-gap {
    padding-top: 70px;
}
    </style>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
 <div class="form-gap"></div>
<div class="container">

     <div class="col-sm-12 text-center">

         <img src="Imagenes/Logo.jpeg" alt="Alternate Text" width="500px" />

        </div>

	<div class="row">
		<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
              <div class="panel-body">
                <div class="text-center">
                  <h3><i class="fa fa-lock fa-4x"></i></h3>
                  <h2 class="text-center">Restaurar Contraseña</h2>
                    <br />
                <h5 id="txttitulo" runat="server"></h5>
                  <div class="panel-body">

                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                           <asp:TextBox ID="txtcod" runat="server"
                                 class="form-control" placeholder="Codigo seguridad"></asp:TextBox>
                            <asp:RequiredFieldValidator Visible="false" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcod" CssClass="alert-danger" ErrorMessage="Código requerido"></asp:RequiredFieldValidator>
                        
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>
                                <input type="password" id="txtpass1" runat="server"
                                 class="form-control" placeholder="Nueva contraseña"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Visible="false" runat="server" ControlToValidate="txtpass1" CssClass="alert-danger" ErrorMessage="Nueva contraseña requerida"></asp:RequiredFieldValidator>
                       
                        </div>
                      </div>

                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
                                 <input type="password" id="txtpass2" runat="server"
                                 class="form-control" placeholder="Reingrese la contraseña"/>
                           <asp:RequiredFieldValidator Visible="false" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass2" CssClass="alert-danger" ErrorMessage="Confirmacion requerida"></asp:RequiredFieldValidator>
                       
                        </div>
                      </div>                                             
                      <div class="form-group">
                        <asp:Button ID="btnCambia" runat="server"
                                    class="btn btn-primary" Text="Cambiar contraseña"
                                    OnClick="btnCambia_Click" />
                      </div>                     
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
</asp:Content>
