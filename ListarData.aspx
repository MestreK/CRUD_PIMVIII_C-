<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListarData.aspx.cs" Inherits="ListarData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        Lista de Atividades por Ordem de Data&nbsp;
        <br />
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" Width="849px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Codigo" HeaderText="Codigo" InsertVisible="False" SortExpression="Codigo" />
                <asp:BoundField DataField="Atividade" HeaderText="Atividade" SortExpression="Atividade" />
                <asp:BoundField DataField="Horas" HeaderText="Horas" SortExpression="Horas" />
                <asp:BoundField DataField="Data Limite" HeaderText="Data Limite" SortExpression="Data Limite" />
                <asp:BoundField DataField="Entregue" HeaderText="Entregue" SortExpression="Entregue" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Atividades.accdb" SelectCommand="SELECT * FROM [CarregarDadosOrdData]"></asp:AccessDataSource>
        <br />
   <a href="Default.aspx">Retornar ao Menu</a>
    </form>
</body>
</html>
