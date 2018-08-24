using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DATA;
using SistemaReportes.BLL.Interfaces;

namespace SistemaReportes.BLL.Metodos
{
   public class MCliente 
    {
        public DAL.Interfaces.ICliente cli;
        public MCliente()
        {
            cli = new DAL.Metodos.MCliente();
        }
        public void ActualizarCliente(Cliente cliente)
        {
            cli.ActualizarCliente(cliente);
        }

        public Cliente BuscarCliente(int idCliente)
        {
            return cli.BuscarCliente(idCliente);
        }

        public void EliminarCliente(int idCliente)
        {
            cli.EliminarCliente(idCliente);
        }

        public void InsertarCliente(Cliente cliente)
        {
            cli.InsertarCliente(cliente);
        }

        public List<Cliente> ListarClientes()
        {
            return cli.ListarClientes();
        }

       
    }
}
