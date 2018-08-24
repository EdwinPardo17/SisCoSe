using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaReportes.UI
{
    public partial class ReseteoOlvidaContra : System.Web.UI.Page
    {
        //ICliente cli;
        //Cliente clienteR;
        //public ReseteoOlvidaContra()
        //{
        //    cli = new MCliente();

        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(Request.QueryString["id"]);
            //clienteR = cli.BuscarCliente(id);
            //txttitulo.InnerHtml = "Estimado " + clienteR.nombre + " favor ingrese el codigo enviado a tu corrreo electronico y la nueva contraseña";
        }

        protected void btnCambia_Click(object sender, EventArgs e)
        {
            //if (txtcod.Text.Equals(clienteR.codigoOlvido))
            //{
            //    if (txtpass1.Value.Equals(txtpass2.Value))
            //    {
            //        clienteR.password = Utilidades.Encriptar(txtpass1.Value);
            //        Random ran = new Random();
            //        String body = ran.Next(796359, 925789).ToString();
            //        clienteR.codigoOlvido = body;
            //        cli.ActualizarCliente(clienteR);
            //        txtcod.Enabled = false;
            //        txtpass1.Disabled = true;
            //        txtpass2.Disabled = true;
            //        btnCambia.Visible = false;
            //        mensaje.Visible = true;

            //        textoMensaje.InnerHtml = "Contaseña cambiada satisfactoriamnete  <a href='LoginCliente.aspx'>Iniciar Sesión</a>";
            //    }
            //    else
            //    {
            //        mensajeError.Visible = true;
            //        textoMensajeError.InnerHtml = "Las contraseñas no coinciden";
            //    }
            //}
            //else
            //{
            //    mensajeError.Visible = true;
            //    textoMensajeError.InnerHtml = "El codigo de seguridad ingresado es incorrecto";
            //}
        }
    }
}