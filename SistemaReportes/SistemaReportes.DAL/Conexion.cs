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
            int ValorEncontrado=99;
            Comando.CommandText = "Select Rol  from usuarios where Correo='" + Usuario + "'and Contraseña='" + Contraseña + "'";

            try
            {
                if (Comando.CommandText != null)
                {
                    ValorEncontrado = 99;
                }
                else
                {
                    ValorEncontrado = int.Parse(Comando.CommandText.ToString());
                        //int.Parse(Comando.ExecuteScalar().ToString());
                }

               
            }
            catch (MySqlException ex)
            {
               
            }
            return ValorEncontrado;






        }

    }
}