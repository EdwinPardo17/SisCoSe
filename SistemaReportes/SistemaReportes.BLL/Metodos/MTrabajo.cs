using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DATA;
using SistemaReportes.BLL.Interfaces;

namespace SistemaReportes.BLL.Metodos
{
    public class MTrabajo : ITrabajo
    {
        public DAL.Interfaces.ITrabajo cli;
        public MTrabajo()
        {
            cli = new DAL.Metodos.MTrabajo();
        }
        public void ActualizarTrabajo(Trabajo trabajo)
        {
            cli.ActualizarTrabajo(trabajo);
        }

        public Trabajo BuscarTrabajo(int idTrabajo)
        {
            return cli.BuscarTrabajo(idTrabajo);
        }

        public void EliminarTrabajo(int idTrabajo)
        {
            cli.EliminarTrabajo(idTrabajo);
        }

        public void InsertarTrabajo(Trabajo trabajo)
        {
            cli.InsertarTrabajo(trabajo);
        }

        public List<Trabajo> ListarTrabajo()
        {
            return cli.ListarTrabajo();
        }

    }
}
