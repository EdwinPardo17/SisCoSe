using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaReportes.DATA
{
    public class Usuario
    {
        public int nombre { get; set; }

        public string apellido { get; set; }

        public string idUsuario { get; set; }

        public string telefono { get; set; }

        public string correo { get; set; }

        public string rol { get; set; }

        public string codigoOlvido { get; set; }
    }
}
