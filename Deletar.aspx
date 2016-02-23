<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Deletar.aspx.cs" Inherits="Deletar" %>

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
    <form id="form2" runat="server">
    <h2 class="auto-style1">Deletar Tarefa</h2>
        <div class="auto-style1">
    Informe o código da Tarefa : 
    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
        </div>
    <p style="text-align: center" />
    <asp:Button ID="btnDeletar" runat="server" Text="Deletar Tarefa" OnClick="btnDeletar_Click" style="text-align: center"/>
    <p class="auto-style1" />
    <asp:Label ID="lblmsg" runat="server" EnableViewState="False"></asp:Label>
    <p class="auto-style1" />
    <a href="Default.aspx">Retorna o Menu</a>
    </form>
</body>
</html>
