using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DATA;

namespace SistemaReportes.BLL.Interfaces
{
    public interface ITrabajo
    {
        List<Trabajo> ListarTrabajo();

        Trabajo BuscarTrabajo(int idTrabajo);

        void InsertarTrabajo(Trabajo trabajo);

        void ActualizarTrabajo(Trabajo trabajo);

        void EliminarTrabajo(int idTrabajo);

    }
}
