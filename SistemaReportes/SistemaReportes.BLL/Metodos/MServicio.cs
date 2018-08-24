using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DATA;
using SistemaReportes.BLL.Interfaces;

namespace SistemaReportes.BLL.Metodos
{
    public class MServicio 
    {
        public DAL.Interfaces.IServicio cli;
        public MServicio()
        {
            cli = new DAL.Metodos.MServicio();
        }
        public void ActualizarServicio(Servicio servicio)
        {
            cli.ActualizarServicio(servicio);
        }

        public Servicio BuscarServicio(int idServicio)
        {
            return cli.BuscarServicio(idServicio);
        }

        public void EliminarServicio(int idServicio)
        {
            cli.EliminarServicio(idServicio);
        }

        public void InsertarServicio(Servicio servicio)
        {
            cli.InsertarServicio(servicio);
        }

        

        public List<Servicio> ListarServicio()
        {
            return cli.ListarServicio();
        }

        
    }
}
