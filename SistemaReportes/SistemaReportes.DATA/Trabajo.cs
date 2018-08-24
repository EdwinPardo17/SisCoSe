using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SistemaReportes.DATA
{
    public class Trabajo
    {
        public int nombreCliente { get; set; }

        public string idCliente { get; set; }

        public string tipoServicio { get; set; }

        public int horaInicio { get; set; }

        public string horaFinal { get; set; }

        public string descripcionEquipo { get; set; }

        public string comentario { get; set; }

    }
}
