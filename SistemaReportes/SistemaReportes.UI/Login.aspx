<%@ Page Title="Ingresar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaReportes.UI.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <link href="Styles/index.css" rel="stylesheet" type="text/css" />
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
   a {
    color: white;
   }

   a:hover {
    color: white;
   }
  </style>

    <div class="container">

     <div class="col-sm-12 text-center">

         <img src="Imagenes/Logo.jpeg" alt="Alternate Text" width="500px" />

        </div>

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<fieldset>
				<hr class="colorgraph">
				<div class="form-group">
                       <asp:TextBox ID="TextBox1" runat="server"
                                class="form-control input-lg" placeholder="Usuario"></asp:TextBox>
				</div>
				<div class="form-group">
                    <input type="password" id="txtContras" runat="server"
                                class="form-control input-lg" placeholder="Contraseña" />

				</div>

				<span class="button-checkbox">
					<button type="button" class="btn" data-color="info">Recordarme</button>
                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
                    <a href="OlvidoContra.aspx" class="pull-right">Olvidó contraseña</a>
				</span>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                         <asp:Button ID="btnLogin" runat="server"
                                    class="btn btn-lg btn-success btn-block" Text="Login"
                                    OnClick="Button_Click" />

					</div>
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <a href="MantenimientoClientes.aspx" class="btn btn-lg btn-primary btn-block">Registrate ahora</a>
					</div>
				</div>
			</fieldset>
        <br />
            <br />
            <br />
	</div>
</div>

</div>
    
    <style>
        /* Credit to bootsnipp.com for the css for the color graph */


.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);

}
    </style>
    <script>
        $(function () {
            $('.button-checkbox').each(function () {
                var $widget = $(this),
                    $button = $widget.find('button'),
                    $checkbox = $widget.find('input:checkbox'),
                    color = $button.data('color'),
                    settings = {
                        on: {
                            icon: 'glyphicon glyphicon-check'
                        },
                        off: {
                            icon: 'glyphicon glyphicon-unchecked'
                        }
                    };

                $button.on('click', function () {
                    $checkbox.prop('checked', !$checkbox.is(':checked'));
                    $checkbox.triggerHandler('change');
                    updateDisplay();
                });

                $checkbox.on('change', function () {
                    updateDisplay();
                });

                function updateDisplay() {
                    var isChecked = $checkbox.is(':checked');
                    // Set the button's state
                    $button.data('state', (isChecked) ? "on" : "off");

                    // Set the button's icon
                    $button.find('.state-icon')
                        .removeClass()
                        .addClass('state-icon ' + settings[$button.data('state')].icon);

                    // Update the button's color
                    if (isChecked) {
                        $button
                            .removeClass('btn-default')
                            .addClass('btn-' + color + ' active');
                    }
                    else {
                        $button
                            .removeClass('btn-' + color + ' active')
                            .addClass('btn-default');
                    }
                }
                function init() {
                    updateDisplay();
                    // Inject the icon if applicable
                    if ($button.find('.state-icon').length == 0) {
                        $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i> ');
                    }
                }
                init();
            });
        });
    </script>

<%--   <table>
       <tr>
    <td>Usuario</td>
    <td> <asp:TextBox ID="txtUsuario" runat="server" ></asp:TextBox></td> 
    
  </tr>
  <tr>
    <td>Contraseña</td>
    <td><asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox></td> 
    
  </tr>
   </table>

    <asp:Button ID="btnIngresar" runat="server" Text="Entrar" OnClick="Button_Click" />
    <br />
     <asp:Label ID="lblMensaje" runat="server" Font-Size="X-Large"></asp:Label>  --%>

</asp:Content>

