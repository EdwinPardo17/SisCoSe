using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DAL.Interfaces;
using SistemaReportes.DATA;
using System.Data;

namespace SistemaReportes.DAL.Metodos
{
   public class MServicio : IServicio
    {
        public void ActualizarServicio(IServicio servicio)
        {
            _db.Update(servicio);
        }

        public Servicio BuscarServicio(int idServicio)
        {
            return _db.Select<Servicio>(x => x.idServicio == idServicio).FirstOrDefault();
        }

        public void EliminarServicio(int idSevicio)
        {
            _db.Delete<Servicio>(x => x.idServicio == idServicio);
        }

        public void InsertarServicio(IServicio servicio)
        {
            _db.Insert(servicio);
        }

        public List<Servicio> ListarServicio()
        {
            return _db.Select<Servicio>();
        }

        
    }
}
