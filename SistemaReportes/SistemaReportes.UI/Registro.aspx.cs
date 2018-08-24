using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaReportes.UI
{
    public partial class Registro : System.Web.UI.Page
    {
        //ICliente cli;
        //public RegistroClientes()
        //{
        //    cli = new MCliente();
        //}
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    Cliente cliente = new Cliente();
            //    bool esta = false;
            //    List<Cliente> listaClientes = cli.ListarClientes();
            //    foreach (Cliente item in listaClientes)
            //    {
            //        if (item.email == txtEmail.Text)
            //        {
            //            esta = true;
            //        }
            //    }

            //    if (!esta)
            //    {
            //        if (txtContras1.Value == txtContras2.Value)
            //        {
            //            Random ran = new Random();
            //            cliente.nombre = txtNombre.Text;
            //            cliente.password = Utilidades.Encriptar(txtContras1.Value);
            //            cliente.email = txtEmail.Text;
            //            cliente.numeroTelefonico = txtTelefono.Text;
            //            cliente.codigoOlvido = ran.Next(1550, 3999).ToString();
            //            cli.InsertarCliente(cliente);
            //            mensaje.Visible = true;
            //            textoMensaje.InnerText = "Gracias por registrarte con nosotros";
            //            txtNombre.Enabled = false;
            //            txtEmail.Enabled = false;
            //            txtContras1.Visible = false;
            //            txtContras2.Visible = false;
            //            txtTelefono.Enabled = false;
            //            btnInsertar.Visible = false;
            //        }
            //        else
            //        {
            //            mensajeError.Visible = true;
            //            textoMensajeError.InnerText = "Las contraseñas no coinciden";
            //        }
            //    }
            //    else
            //    {
            //        mensajeError.Visible = true;
            //        textoMensajeError.InnerText = "Correo ingresado ya esta registrado";
            //    }

            //}
            //catch (Exception)
            //{

            //    mensajeError.Visible = true;
            //    textoMensajeError.InnerText = "Debe llenar todos los campos adecuadamente";
            //}
        }
    }
}