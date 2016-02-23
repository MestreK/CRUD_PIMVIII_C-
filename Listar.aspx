<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Listar.aspx.cs" Inherits="Listar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form4" runat="server">
           
        <h2>Lista de Atividades&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h2>
       

        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="AccessDataSource1" DataKeyNames="codigo">
            <Columns>
                <asp:BoundField DataField="codigo" HeaderText="codigo" InsertVisible="False" SortExpression="codigo" ReadOnly="True" />
                <asp:BoundField DataField="tarefa" HeaderText="tarefa" SortExpression="tarefa" />
                <asp:BoundField DataField="datalimite" HeaderText="datalimite" SortExpression="datalimite" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Tarefas.accdb" SelectCommand="SELECT * FROM [Tarefas]"></asp:AccessDataSource>
        <br />
        <br />
        <a href="Default.aspx">Retornar ao Menu</a>
    </form>
</body>
</html>