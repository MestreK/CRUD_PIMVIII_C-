using System;
using WebApplication5.Models;
using WebApplication5.DAL;

namespace WebApplication5
{
    public partial class cadastrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            UsuarioDAL usuarioDAL = new UsuarioDAL();
            mdlUsuario usuario = new mdlUsuario();

            usuario.Usuario = txtUsuario.Text;
            usuario.Senha = txtSenha.Text;

            try
            {

                usuarioDAL.Incluir (usuario.Usuario, usuario.Senha) ;

                txtUsuario.Text = null;
                txtSenha.Text = null;
                Response.Redirect("Entrar.aspx", false);
            }
            catch (Exception ex)
            {

            }


        }
    }
}