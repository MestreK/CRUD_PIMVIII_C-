using System;
using System.Web.UI;
using WebApplication5.Models;

namespace WebApplication5
{
    public partial class _Default : Page
    {
        protected void mensagemhoje()
        {
            Lancamento c = LancamentoDAL.GetTarefaData();
            if (c != null)
            {
                litMensagem.Text = "<span class='msg'>Há Tarefas a Serem Entregues Hoje!</span>";
                // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "mensagem", "document.getElementById('divMensagens').append('<span>Há Tarefas a Serem Entregues Hoje</span>');", true);
            }
            else
            {
                litMensagem.Text = "<span class='msg'>Não há Tarefas a Serem Entregues Hoje!</span>";
                // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "mensagem", "document.getElementById('divMensagens').append('<span>Não há Tarefas a Serem Entregues Hoje</span>');", true);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            mensagemhoje();  // "Não Há Atividades a Serem Entregues Hoje" ou "Há Atividades a Serem Entregues Hoje"
        }
    }
}