using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Entrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtLogin.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\PIM8.accdb";

            string query = "Select Count(*) From Usuario Where Usuario =? And Senha =?";

            int result = 0;
            using (OleDbConnection conn = new OleDbConnection(connectionString))
            {
                using (OleDbCommand cmd = new OleDbCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("", txtLogin.Text);
                    cmd.Parameters.AddWithValue("", txtSenha.Text);
                    conn.Open();
                    Session["User"] = txtLogin.Text;
                    result = (int)cmd.ExecuteScalar();
                }
            }
            if (result > 0)
            {
                Response.Redirect("Conteudo/Default.aspx");
            }
            else
            {
                Literal1.Text = "Login ou senha incorreto!";
            }
        }
    }
}