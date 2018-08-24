using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DATA;

namespace SistemaReportes.BLL.Interfaces
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
