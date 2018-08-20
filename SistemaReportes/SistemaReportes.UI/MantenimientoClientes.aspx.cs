using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using SistemaReportes.DAL;
using MySql.Data.MySqlClient;
using System.Data;

namespace SistemaReportes.UI
{
    public partial class MantenimientoClientes : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=localhost; Uid=root;database=siscose;Password= Siscose2018; Port=3306; SslMode=none");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ingresar_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void TxtUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            conn.Open();
            MySqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from clientes";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvClientes.DataSource = dt;
            gvClientes.DataBind();
            conn.Close();
        }


    }

}


