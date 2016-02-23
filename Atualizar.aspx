<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Atualizar.aspx.cs" Inherits="Atualizar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
    </head>
<body>
    <form id="form3" runat="server">
   <h2 class="auto-style1">
        Atualizar Tarefa</h2>
        <table align="center">
             <tr>
                <td class="auto-style1">Codigo</td>
                <td>
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                    <asp:Button ID="btnGetDetalhes" runat="server" Text="Obter Detalhes" OnClick="btnGetDetalhes_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Tarefa</td>
                <td>
                    <asp:TextBox ID="txtTarefa" runat="server" Width="247px"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    Data Limite</td>
                <td>
                    <asp:TextBox ID="txtDatalimite" runat="server"></asp:TextBox></td>
            </tr>
           
        </table>
        <div class="auto-style1">
        <br />
        <asp:Button ID="btnAtualiza" runat="server" Text="Atualizar Tarefa" Enabled="false" OnClick="btnAtualizar_Click" /><br />
        <br />
        <asp:Label ID="lblmsg" runat="server" EnableViewState="False"></asp:Label><br />
        </div>
        <p class="auto-style1" />
        <a href="Default.aspx">Retornar ao Menu</a>
    </form>
</body>
</html>
