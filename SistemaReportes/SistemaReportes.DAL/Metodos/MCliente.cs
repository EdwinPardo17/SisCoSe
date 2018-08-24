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
   public class MCliente : ICliente
    {
        public void ActualizarCliente(Cliente cliente)
        {
            _db.Update(cliente);
        }

        public Cliente BuscarCliente(int idCliente)
        {
            return _db.Select<Cliente>(x => x.idCliente == idCliente).FirstOrDefault();
        }

        public void EliminarCliente(int idCliente)
        {
            _db.Delete<Cliente>(x => x.idCliente == idCliente);
        }

        public void InsertarCliente(Cliente cliente)
        {
            _db.Insert(cliente);
        }

        public List<Cliente> ListarClientes()
        {
            return _db.Select<Cliente>();
        }

        public Cliente LoginCliente(string username, string password)
        {
            return _db.Select<Cliente>(x => x.email == username && x.password == password).FirstOrDefault();
        }
    }
}
