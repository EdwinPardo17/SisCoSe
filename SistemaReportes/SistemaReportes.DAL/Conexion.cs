using MySql.Data.MySqlClient;
using System;

namespace SistemaReportes.DAL
{
    public class Conexion
    {
        MySqlConnection connect;
        MySqlCommand Comando = new MySqlCommand();
        public Conexion()
        {
            
        }

        public String Conectar()
        {
            connect = new MySqlConnection("server=localhost; Uid=root;database=siscose;Password= Siscose2018; Port=3306; SslMode=none");
            
            try
            {
                connect.Open();
                Comando.Connection = connect;
            }
            catch (MySqlException e)
            {
                return "Error:" + e.Message;
            }
            return "Conexion exitosa";

        }


        public String Desconectar()
        {

            try
            {
                connect.Close();
            }
            catch (MySqlException e)
            {
                return "Error:" + e.Message;
            }
            return "Desconexion exitosa";

        }




        public int Validar(String Usuario, String Contraseña)
        {
            
            Comando.CommandText = "Select Rol  from usuarios where Nombre='" + Usuario + "'and Contraseña='" + Contraseña + "'";
            int valor = int.Parse(Comando.ExecuteScalar().ToString());
            return valor;
        }

    }
}