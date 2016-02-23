using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace WebApplication5.DAL
{
    public class Contexto
    {
      public OleDbConnection obterConexao()
        {
            OleDbConnection conn = null;

            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\PIM8.accdb";

            conn = new OleDbConnection(connectionString);

            if(conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            return conn;
        }

        public void fecharConexao (OleDbConnection conn)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        
    }
}