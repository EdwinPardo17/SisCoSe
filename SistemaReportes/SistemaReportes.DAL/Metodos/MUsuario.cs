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
    public class MUsuario : IUsuario
    {
        public void ActualizarUsuario(Usuario usuario)
        {
            _db.Update(usuario);
        }

        public Usuario BuscarUsuario(int idUsuario)
        {
            return _db.Select<Usuario>(x => x.idUsuario == idUsuario).FirstOrDefault();
        }

        public void EliminarUsuario(int idUsuario)
        {
            _db.Delete<Usuario>(x => x.idUsuario == idUsuario);
        }

        public void InsertarUsuario(Usuario usuario)
        {
            _db.Insert(usuario);
        }

        public List<Usuario> ListarUsuario()
        {
            return _db.Select<Usuario>();
        }

        public Usuario LoginUsuario(string username, string password)
        {
            return _db.Select<Usuario>(x => x.email == username && x.password == password).FirstOrDefault();
        }
    }
}
