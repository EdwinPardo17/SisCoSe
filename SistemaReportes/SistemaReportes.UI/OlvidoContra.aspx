<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OlvidoContra.aspx.cs" Inherits="SistemaReportes.UI.OlvidoContra" %>
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
                  <h2 class="text-center">Olvidó Contraseña</h2>
                  <p>Un codigo de seguridad temporal será enviado a su correo electronico para cambiar tu contraseña.</p>
                  <div class="panel-body">

                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <asp:TextBox ID="txtemail" runat="server"
                                 class="form-control" placeholder="Email"></asp:TextBox>
                          <asp:RequiredFieldValidator Visible="false" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" CssClass="alert-danger" ErrorMessage="Email requerido"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator Visible="false" ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" CssClass="alert-danger" ErrorMessage="Ingrese un email valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>            

                        </div>
                      </div>

                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                             <asp:TextBox ID="txtTel1" runat="server" class="form-control" placeholder="Telefono"></asp:TextBox>
                             <asp:RequiredFieldValidator Visible="false" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTel1" CssClass="alert-danger" ErrorMessage="Telefono requerido"></asp:RequiredFieldValidator>
                       
                        </div>
                      </div>

                       
                          

                      <div class="form-group">
                             <asp:Button ID="btnEnviaCodigo" runat="server" class="btn btn-lg btn-primary btn-block" 
                                    Text="Enviar Codigo"
                                    OnClick="btnEnviaCodigo_Click" />
                      </div>


                      
                  </div>
                </div>
              </div>
            </div>
          </div>
	</div>
</div>
</asp:Content>
