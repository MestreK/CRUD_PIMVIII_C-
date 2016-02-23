using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Deletar : System.Web.UI.Page
{
    protected void btnDeletar_Click(object sender, EventArgs e)
    {
        Contato _contato = new Contato();
        if (txtCodigo.Text == string.Empty)
        {
            lblmsg.Text = "Código inválido";
            return;
        }

        try
        {
            _contato.Codigo = Convert.ToInt32(Int32.Parse(txtCodigo.Text));
            ContatoDAL.Excluir(_contato.Codigo);
           // _contato = Convert.ToInt32(txtCodigo.Text);
           //ContatoDAL.Excluir(Convert.ToInt32(txtCodigo.Text));
            lblmsg.Text = "Tarefa excluída com sucesso!"; txtCodigo.Text = "";
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Error -> " + ex.Message;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}