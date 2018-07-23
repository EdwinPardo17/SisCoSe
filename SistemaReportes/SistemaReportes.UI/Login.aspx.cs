using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Text;
//using SistemaReportes.DAL;

namespace SistemaReportes.UI
{
    public partial class Login : System.Web.UI.Page
    {
      

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ingresar_Authenticate(object sender, AuthenticateEventArgs e)
        {
          
        }

        protected void txtUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            //Conexion con = new Conexion();

            //con.Conectar();

            //string Usuario = txtUsuario.Text;
            //string Contraseña = txtContraseña.Text;

            //int valor = con.Validar(Usuario, Contraseña);

            //try
            //{
            //    if (valor  == 1)
            //    {
            //        lblMensaje.Text = "Bienvenido";
            //        Response.Redirect("About.aspx");
            //    }
            //    else
            //    {
            //        Response.Write("No se encontro usuario");
            //    }

            //}
            //catch (MySqlException ex)
            //{

            //    Response.Write("No se puede ejecutar" + ex.Message);
            //}


            //con.Desconectar();


        }


    }

    }
    
