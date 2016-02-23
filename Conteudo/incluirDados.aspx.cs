using System;
using System.Web.UI;
using WebApplication5.Models;

namespace WebApplication5
{
    public partial class incluirDados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Lancamento lancamento = new Lancamento();
            LancamentoDAL lancamentoDal = new LancamentoDAL();


           

            lancamento.descricao = txtDescricao.Text;
            lancamento.dataCadastro = txtDataCadastro.Text;
            lancamento.dataLimite = txtDataLimite.Text;

            try
            {

                lancamentoDal.Incluir(lancamento.descricao, lancamento.dataCadastro, lancamento.dataLimite);
                
                txtDescricao.Text = null;
                txtDataCadastro.Text = null;
                txtDataLimite.Text = null;
                Response.Redirect("incluir.aspx", false);
            }
            catch (Exception ex)
            {
                
            }

        }
    }
}