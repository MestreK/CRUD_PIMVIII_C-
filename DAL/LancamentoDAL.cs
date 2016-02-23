using System;
using System.Data.OleDb;
using WebApplication5.Models;

namespace WebApplication5
{
    public class LancamentoDAL
    {

        public static Lancamento GetTarefa(int codigo)
        {
            string query = "SELECT * FROM Lancamento WHERE Descricao.codigo like " + codigo + "";
            OleDbConnection conn = null;
            try
            {
                string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\PIMVIII.accdb";
                conn = new OleDbConnection(connectionString); conn.Open();
                OleDbCommand cmd = new OleDbCommand(query, conn);
                OleDbDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Lancamento ct = new Lancamento();
                    if (!(String.IsNullOrEmpty(dr["tarefa"].ToString()))) { ct.descricao = dr["tarefa"].ToString(); }
                    if (!(String.IsNullOrEmpty(dr["datalimite"].ToString()))) { ct.dataLimite = dr["datalimite"].ToString(); }
                    return ct;
                }
                else
                    return null;
            }

            finally
            {
                conn.Close();
            }
        }


        public static Lancamento GetTarefaData()
        {
            string query = "SELECT * FROM DataHoje";
            OleDbConnection conn = null;
            try
            {
                string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\PIM8.accdb";
                conn = new OleDbConnection(connectionString); conn.Open();

                OleDbCommand cmd = new OleDbCommand(query, conn);
                OleDbDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Lancamento ct = new Lancamento();
                    ct.descricao = dr["descricao"].ToString();
                    ct.dataLimite = dr["datalimite"].ToString();
                    return ct;
                }
                else
                    return null;
            }
            finally
            {
                conn.Close();
            }
        }


        public bool Incluir(string descricao, string datacadastro, string datalimite)
        {
            string query = "INSERT into Lancamento(DESCRICAO, DATACADASTRO, DATALIMITE) VALUES ('" + descricao + "', '" + datacadastro + "', '" + datalimite + "')";
            string Conection = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\PIM8.accdb";
            OleDbDataReader reader = null;
            OleDbConnection conn = new OleDbConnection(Conection);


            try
            {
                conn.Open();
                OleDbCommand cmd = new OleDbCommand(query, conn);
                //
                // Executa comando
                //
                reader = cmd.ExecuteReader();
                //
                //interage com a tabela retornada
                //
                while (reader.Read())
                {
                    return true;
                }


                conn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                //
                // Garante que a conexão será fechada mesmo que ocorra algum erro.
                // Não existe problema em fechar uma conexão duas vezes.
                // O problema está em abrir uma conexão duas vezes.
                //
                if (conn != null)
                {
                    conn.Close();
                }
            }
            return true;
        }


    }

}
