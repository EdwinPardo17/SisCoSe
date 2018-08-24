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
    public class MTrabajo : ITrabajo
    {
        public void ActualizarTrabajo(Trabajo trabajo)
        {
            _db.Update(trabajo);
        }

        public Trabajo BuscarTrabajo(int idTrabajo)
        {
            return _db.Select<Trabajo>(x => x.idTrabajo == idTrabajo).FirstOrDefault();
        }

        public void EliminarTrabajo(int idTrabajo)
        {
            _db.Delete<Trabajo>(x => x.idTrabajo == idTrabajo);
        }

        public void InsertarTrabajo(Trabajo trabajo)
        {
            _db.Insert(trabajo);
        }

        public List<Trabajo> ListarTrabajo()
        {
            return _db.Select<Trabajo>();
        }
    }
}
