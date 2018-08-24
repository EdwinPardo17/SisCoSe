using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DAL;
using SistemaReportes.DATA;

namespace SistemaReportes.DAL.Interfaces
{
    public interface IUsuario
    {
        List<Usuario> ListarUsuario();

        Usuario BuscarUsuario(int idUsuario);

        void InsertarUsuario(Usuario usuario);

        void ActualizarUsuario(Usuario usuario);

        void EliminarUsuario(int idUsuario);

        Usuario LoginUsuario(string username, string password);
    }
}
