using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DAL;
using SistemaReportes.DATA;

namespace SistemaReportes.DAL.Interfaces
{
    public interface IServicio
    {
        List<Servicio> ListarServicio();

        Servicio BuscarServicio(int idServicio);

        void InsertarServicio(Servicio servicio);

        void ActualizarServicio(Servicio servicio);

        void EliminarServicio(int idServicio);

        
    }
}
