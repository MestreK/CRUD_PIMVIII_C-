using System;
using System.Data.OleDb;
using WebApplication5.Models;
using WebApplication5.DAL;

namespace WebApplication5.DAL
{
    public class UsuarioDAL
    {
        public bool Incluir(string usuario, string senha)
        {
            string query = "INSERT into USUARIO(USUARIO, SENHA) VALUES ('" + usuario + "', '" + senha + "')";
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