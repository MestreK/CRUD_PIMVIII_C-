using System;



public partial class Atualizar : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetDetalhes_Click(object sender, EventArgs e)
    {
        if (txtCodigo.Text == string.Empty)
        {
            lblmsg.Text = "Código inválido";
            return;
        }

        Contato  c = ContatoDAL.GetTarefa(Int32.Parse(txtCodigo.Text));
        if (c != null)
        {   
            // não deixa carregar valores nulos ou vazios 
            if (!(String.IsNullOrEmpty(c.Tarefa))) { txtTarefa.Text = c.Tarefa; }
            if (!(String.IsNullOrEmpty(c.Datalimite))) { txtDatalimite.Text = c.Datalimite; }
                                  
            btnAtualiza.Enabled = true;

        }
        else
        {
            lblmsg.Text = "Tarefa não encontrada!";
            btnAtualiza.Enabled = false;
        }

    }
    protected void btnAtualizar_Click(object sender, EventArgs e)
    {
        Contato _contato = new Contato();
        // não deixa carregar valores nulos ou vazios 
       if (!(String.IsNullOrEmpty(txtTarefa.Text))) { _contato.Tarefa = txtTarefa.Text; }
     //if (!(String.IsNullOrEmpty(txtHoras.Text))) { _contato.Horas = Int32.Parse(txtHoras.Text); }
       if (!(String.IsNullOrEmpty(txtDatalimite.Text))) { _contato.Datalimite = txtDatalimite.Text; }
       // if (!(String.IsNullOrEmpty(txtEntregue.Text))) { _contato.Entregue = txtEntregue.Text; }

        _contato.Codigo = Convert.ToInt32(Int32.Parse(txtCodigo.Text));
        try
        {
            ContatoDAL.Atualizar(_contato.Codigo,_contato.Tarefa,_contato.Datalimite);
            //outra forma de atualizar as atividades
            //bool retorno = ContatoDAL.AtualizarAtividades(_contato.Codigo,_contato.Atividade,_contato.Horas,_contato.Datalimite,_contato.Entregue);
            lblmsg.Text = "Tarefa Atualizada com Sucesso!"; 
        //limpa e termina
            txtCodigo.Text=""; txtTarefa.Text = ""; txtDatalimite.Text = ""; 
            return;
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Error -> " + ex.Message;
        }
    }
}