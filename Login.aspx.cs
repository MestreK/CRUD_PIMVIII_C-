using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connect = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=|DataDirectory|contacts.mdb";
            string query = "Select Count(*) From Users Where Username = ? And UserPassword = ?";
            int result = 0;
            using (OleDbConnection conn = new OleDbConnection(connect))
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
                Response.Redirect("LoggedIn.aspx");
            }
            else
            {
                Literal1.Text = "Invalid credentials";
            }
        }
    }
}