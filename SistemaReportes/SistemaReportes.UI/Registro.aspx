<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="SistemaReportes.UI.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

    <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div>
      <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
          <a href="Login.aspx">Iniciar Sesión</a>
    </div>
    <style>
#playground-container {
    height: 500px;
    overflow: hidden !important;
    -webkit-overflow-scrolling: touch;
}
body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	background-color: #13A7FF;
 	font-family: 'Oxygen', sans-serif;
	    background-size: cover;
        color:white;
}

.main{
 	margin:50px 15px;
}

h1.title { 
	font-size: 50px;
	font-family: 'Passion One', cursive; 
	font-weight: 400; 
}

hr{
	width: 10%;
	color: #fff;
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
}

.main-login{
 	background-color: #109cef;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

}
.form-control {
    height: auto!important;
padding: 8px 12px !important;
}
.input-group {
    -webkit-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
    -moz-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
    box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
}
#button {
    border: 1px solid #ccc;
    margin-top: 28px;
    padding: 6px 12px;
    color: #666;
    text-shadow: 0 1px #fff;
    cursor: pointer;
    -moz-border-radius: 3px 3px;
    -webkit-border-radius: 3px 3px;
    border-radius: 3px 3px;
    -moz-box-shadow: 0 1px #fff inset, 0 1px #ddd;
    -webkit-box-shadow: 0 1px #fff inset, 0 1px #ddd;
    box-shadow: 0 1px #fff inset, 0 1px #ddd;
    background: #f5f5f5;
    background: -moz-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5), color-stop(100%, #eeeeee));
    background: -webkit-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -o-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: -ms-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    background: linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
    filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5', endColorstr='#eeeeee', GradientType=0);
}
.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 400px;
    padding: 10px 40px;
	background: #109cef;
	    color: #FFF;
    text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

}
span.input-group-addon i {
    color: #009edf;
    font-size: 17px;
}

.login-button{
	margin-top: 5px;
}

.login-register{
	font-size: 11px;
	text-align: center;
}
    </style>

		<div class="container">

                 <div class="col-sm-12 text-center">

         <img src="Imagenes/Logo.jpeg" alt="Alternate Text" width="400px" />

        </div>

			<div class="row main">
				<div class="main-login main-center">
						<div class="form-group">
                             <asp:Label ID="lbNombre" for="txtNombre" runat="server" class="cols-sm-2 control-label" Text="Nombre completo:"></asp:Label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									
        <asp:TextBox ID="txtNombre" runat="server" name="txtNombre" placeholder="Ingrese su nombre:" CssClass="form-control" required></asp:TextBox>
								</div>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar un nombre" CssClass="alert-danger"></asp:RequiredFieldValidator>
       
							</div>
						</div>

						<div class="form-group">
                            <asp:Label ID="lbEmail" runat="server" class="cols-sm-2 control-label" 
                                Text="Email:"></asp:Label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="txtEmail" placeholder="Ingrese su email:" runat="server" CssClass="form-control" required></asp:TextBox>
                                   
								</div>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="alert-danger" ErrorMessage="Debe ingresar un email valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" CssClass="alert-danger" ErrorMessage="Debe ingresar un email"></asp:RequiredFieldValidator>
      

							</div>
						</div>

						<div class="form-group">
                            <asp:Label ID="lbTelefono" class="cols-sm-2 control-label" runat="server" Text="Telefono:"></asp:Label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
									   <asp:TextBox ID="txtTelefono" runat="server" placeholder="Ingrese su numero telefonico" CssClass="form-control" required></asp:TextBox>
  </div>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefono" CssClass="alert-danger" ErrorMessage="Debe ingresar un telefono"></asp:RequiredFieldValidator>
								
							</div>
						</div>

                     
     
        

						<div class="form-group">
                             <asp:Label ID="lbPassword" class="cols-sm-2 control-label" runat="server" Text="Contraseña:"></asp:Label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                     <input type="password" id="txtContras1" runat="server" class="form-control" placeholder="Contraseña" required/>
                                  
								</div>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContras1" CssClass="alert-danger" ErrorMessage="Contraseña requerida"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtContras1" ControlToValidate="txtContras2" CssClass="alert-danger" ErrorMessage="Las contraseñas no coinciden"></asp:CompareValidator>
        
							</div>
						</div>

						<div class="form-group">
                             <asp:Label ID="lbPassword2" runat="server" class="cols-sm-2 control-label" Text="Confirme contraseña:"></asp:Label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" id="txtContras2" runat="server" class="form-control" placeholder="Confirme contraseña" required/>
         
								</div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContras2" CssClass="alert-danger" ErrorMessage="Reingreso de contraseña requerida"></asp:RequiredFieldValidator>

							</div>
						</div>

                    
        
						<div class="form-group ">
                            <asp:Button ID="btnInsertar" runat="server" Text="Registrarse" 
                                CssClass="btn btn-primary btn-lg btn-block login-button" 
                                OnClick="btnInsertar_Click" />
   
						</div>
				</div>
			</div>
		</div>

</asp:Content>
