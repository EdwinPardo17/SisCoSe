using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using MySql.Data;
using MySql.Data.Types;

namespace SistemaReportes.DAL
{
    public class Conexion
    {

        public Conexion()
        {


        }

        public static MySqlConnection Conex()
        {

            MySqlConnection conectar = new MySqlConnection("server=localhost;user id=root;database=siscose;persistsecurityinfo=True");
            conectar.Open();
            return conectar;
        }

    }
}
