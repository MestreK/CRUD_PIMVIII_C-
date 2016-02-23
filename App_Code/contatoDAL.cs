using System;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


public class ContatoDAL
{
    

     
    public static Contato GetTarefa(int codigo)
    {
        string query = "SELECT * FROM Tarefas WHERE Tarefas.codigo like " + codigo + "";
        OleDbConnection conn = null;
        try
        {
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Tarefas.accdb";
            conn = new OleDbConnection(connectionString); conn.Open();
            OleDbCommand cmd = new OleDbCommand(query, conn);
            OleDbDataReader dr = cmd.ExecuteReader();            
            if (dr.Read())
            {
                
                Contato ct = new Contato();
                if (!(String.IsNullOrEmpty(dr["tarefa"].ToString()))) { ct.Tarefa = dr["tarefa"].ToString(); }
                if (!(String.IsNullOrEmpty(dr["datalimite"].ToString()))) { ct.Datalimite = dr["datalimite"].ToString(); }
                return ct;
            }
            else
                return null;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
        }
    }


    public static Contato GetTarefaData()
    {
        string query = "SELECT * FROM DataHoje";
        OleDbConnection conn = null;
        try
        {
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Tarefas.accdb";
            conn = new OleDbConnection(connectionString); conn.Open();

            OleDbCommand cmd = new OleDbCommand(query, conn);
            OleDbDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Contato ct = new Contato();
                ct.Tarefa = dr["tarefa"].ToString();
                ct.Datalimite = dr["datalimite"].ToString();
                return ct;
            }
            else
                return null;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
        }
    }

    public bool Incluir(string tarefa, string datalimite)
    {
        string query = "INSERT into Tarefas(tarefa, datalimite) VALUES ('" + tarefa + "', '" + datalimite + "')";
        OleDbDataReader reader = null;
        OleDbConnection conn = null;
        try
        {
            conn = obterConexao();
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
            fecharConexao(conn);
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
   
    public static string Excluir(int codigo)
    {

    string query = "DELETE * FROM Tarefas WHERE Tarefas.codigo Like " + codigo + "";
            OleDbDataReader reader = null;
            OleDbConnection conn = null;
            try
            {
                string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Tarefas.accdb";
                conn = new OleDbConnection(connectionString); conn.Open();
                //
                // Criação do objeto comando, que recebe a query que será utilizada
                //na operação e a conexão com o banco.
                //
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
                    return null; 
                }

                if (conn.State == ConnectionState.Open)
                {
                    //
                    //fecha conexão
                    //
                    conn.Close();
                }


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
            return null;
        }


      
          
   
        
         public  static bool Atualizar(int codigo, string tarefa, string datalimite)
        {
            string query = "UPDATE Tarefas SET Tarefas.tarefa = '" + tarefa + "', Tarefas.datalimite = '" + datalimite + "' WHERE Tarefas.codigo Like "+ codigo +"";
            OleDbDataReader reader = null; OleDbConnection conn = null;
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Tarefas.accdb";
            conn = new OleDbConnection(connectionString); 
            conn.Open();
             try
            {
               
                //
                // Criação do objeto comando, que recebe a query que será utilizada
                //na operação e a conexão com o banco.
                //
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

   public OleDbConnection obterConexao()
        {
            OleDbConnection conn = null;
            //
            //string de conexão que informa dados do banco que irei acessar
            //
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Tarefas.accdb";
            //
            //instância da conexão
            //
            conn = new OleDbConnection(connectionString);
            //
            //verifica se conexão está fechada, se tiver abre.
            //
            if (conn.State == ConnectionState.Closed)
            {
                //
                //abre conexão
                //
                conn.Open();
            }
            return conn;
        }

        public void fecharConexao(OleDbConnection conn)
        {
            if (conn.State == ConnectionState.Open)
            {
                //
                //fecha conexão
                //
                conn.Close();
            }
        }

    }

 


