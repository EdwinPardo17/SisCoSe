<%@ Page Title="AdministrarTrabajo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaReportes.UI.Login" %>

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

   <%--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <!-- Jquery -->
    <script src="https://code.jquery.com/jquery-3.2.0.min.js"></script>

    <!-- Datatables Script -->
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
   --%>
   
     <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Datatables CSS -->
    <link rel="stylesheet" href="http://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">

    <!-- Su CSS -->
    <link rel="stylesheet" href="css/main.css">
<style>

</style>

     <div class="col-sm-12 text-left">
         <h2>Trabajos Pendientes</h2>
     </div>

<div class="row">

    <%--
<div style="background-color: lightgray">
        
    <table border=1 style="width:100%" class="table table-striped">
      <tr>
        <th>Trabajo</th>
        <th>Tecnico</th> 
        <th>Correo</th>
        <th></th>
        <th></th>
      </tr>
      <tr>
        <td></td>
        <td></td> 
        <td></td>
        <td></td>
        <td>carmen@correo.com</td>
      </tr>
      <tr>
        <td></td>
        <td></td> 
        <td></td>
        <td></td>
        <td>esteban@correo.com</td>
      </tr>
    </table>

</div>
--%>

    <div class="container table-section last">
        <h2>Trabajos</h2>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active">
                <table id="naves" class="display">
                    <thead>
                        <tr>
                            <th>Nombre cliente</th>
                            <th>Id Cliente</th>
                            <th>Tipo de servicio</th>
                            <th>Hora de inicio</th>
                            <th>Hora final</th>
                            <th>Descripcion del equipo</th>
                            <th>Comentario</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <table class="table">
  <thead>
    <tr>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      
        <td>Edwin</td> 
        <td>01</td>
        <td>Tecnico</td> 
        <td>1:00</td>
        <td>3:00</td> 
        <td>Switch</td>
        <td>Ynffndfid</td>   
    </tr>
   
  </tbody>
</table>

    <div class="col-xs-20 col-sm-10 col-md-10">

    <fieldset>
				<div >
					<div>
                        <asp:Button ID="btnRegistrarTrabajo" 
                            runat="server" class="btn btn-md btn-success" Text="Registrar Trabajo" OnClick="Button_Click" />
                        
                      
                         <asp:Button ID="btnModificarTrabajo" 
                             runat="server" class="btn btn-warning btn-responsive btninter" Text="Modificar Trabajo" OnClick="Button_Click" />
                        

                        <asp:Button ID="btnEliminarTrabajo" 
                            runat="server" class="btn btn-md btn-danger" Text="Eliminar Trabajo" OnClick="Button_Click" />
					</div>
				</div>
	</fieldset>
     </div>
</div>

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

</asp:Content>

