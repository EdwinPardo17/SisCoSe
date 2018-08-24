using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SistemaReportes.DATA;
using SistemaReportes.BLL.Interfaces;

namespace SistemaReportes.BLL.Metodos
{
    public class MUsuario : IUsuario

    {
        public DAL.Interfaces.IUsuario cli;
        public MUsuario()
        {
            cli = new DAL.Metodos.MUsuario();
        }
        public void ActualizarUsuario(Usuario usuario)
        {
            cli.ActualizarUsuario(usuario);
        }

        public Usuario BuscarUsuario(int idUsuario)
        {
            return cli.BuscarUsuario(idUsuario);
        }

        public void EliminarUsuario(int idUsuario)
        {
            cli.EliminarUsuario(idUsuario);
        }

        public void InsertarUsuario(Usuario usuario)
        {
            cli.InsertarUsuario(usuario);
        }

        public List<Usuario> ListarUsuario()
        {
            return cli.ListarUsuario();
        }

        public Usuario LoginUsuario(string username, string password)
        {
            return cli.LoginUsuario(username, password);
        }
    }
}
