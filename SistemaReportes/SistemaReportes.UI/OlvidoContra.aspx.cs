using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaReportes.UI
{
    public partial class OlvidoContra : System.Web.UI.Page
    {
        //ICliente cli;
        //public OlvidoContaCli()
        //{
        //    cli = new MCliente();
        //}

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviaCodigo_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    var listaClientes = cli.ListarClientes();
            //    foreach (Cliente item in listaClientes)
            //    {
            //        if (txtemail.Text.Equals(item.email) && txtTel1.Text.Equals(item.numeroTelefonico))
            //        {
            //            Random ran = new Random();
            //            String body = ran.Next(56184, 961855).ToString();
            //            item.codigoOlvido = body;
            //            cli.ActualizarCliente(item);
            //            EnviaCorreo.SendEmailPassword(item, body);
            //            mensaje.Visible = true;
            //            textoMensaje.InnerHtml = "Codigo enviado";
            //            mensajeError.Visible = false;
            //            Response.Redirect("ReseteoOlvidaContra.aspx?id=" + item.idCliente);
            //            break;
            //        }
            //        else
            //        {
            //            mensajeError.Visible = true;
            //            textoMensajeError.InnerHtml = "Los credenciales ingresados no corresponden";
            //        }
            //    }
            //}
            //catch (Exception)
            //{

            //    throw;
            //}
        }
    }
}