<%@ Page Title="Consultar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar.aspx.cs" Inherits="WebApplication5.Consultar" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="Esquerda">
    <ul>
	    <li><a href="Default.aspx"> Voltar </a></li>
		<li><a href="#"> Sair </a></li>

	</ul>

        <div id="Calendario">
            <asp:Calendar runat="server" BackColor="White" BorderColor="#3366CC" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="256px" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest">
                <DayHeaderStyle ForeColor="#336666" Height="1px" BackColor="#99CCCC"></DayHeaderStyle>

                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>

                <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True"></SelectedDayStyle>

                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666"></SelectorStyle>

                <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px"></TitleStyle>

                <TodayDayStyle BackColor="#99CCCC" ForeColor="White"></TodayDayStyle>
                <WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
            </asp:Calendar>
        </div>
  
   </div>
    
    
    <div id="Principal">

        <table id="tbConsulta">
            <tr>
                <td id="Titulo" colspan="3">
                    Consultar Dados
                </td>
            </tr>
        <tr>
        <td><asp:Label ID="lblDescricao" runat="server" Text="Descrição:"></asp:Label></td>
        <td><asp:TextBox ID="txtConsulta" runat="server"></asp:TextBox></td>
        <td><asp:Button ID="btPesquisar" runat="server" OnClick="btPesquisar_Click" Text="Pesquisar" /></td>
        </tr>
        </table>
        
        <br />
        <br />
        <asp:GridView ID="GridView1Consulta" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODIGO" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" InsertVisible="False" ReadOnly="True" SortExpression="CODIGO" />
                <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                <asp:BoundField DataField="DATACADASTRO" HeaderText="DATACADASTRO" SortExpression="DATACADASTRO" />
                <asp:BoundField DataField="DATALIMITE" HeaderText="DATALIMITE" SortExpression="DATALIMITE" />
                <asp:CommandField CancelText="Cancelar" DeleteText="Deletar" EditText="Editar" InsertText="Inserir" NewText="Novo" SelectText="Selecionar" ShowEditButton="True" />
                <asp:CommandField CancelText="Cancelar" DeleteText="Deletar" EditText="Editar" InsertText="Inserir" NewText="Novo" SelectText="Selecionar" ShowDeleteButton="True" UpdateText="Atualizar" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AtividadesAcademicas %>" ProviderName="<%$ ConnectionStrings:AtividadesAcademicas.ProviderName %>" SelectCommand="SELECT * FROM [Lancamento] WHERE ([DESCRICAO] LIKE '%' + ? + '%')" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Lancamento] WHERE [CODIGO] = ? AND [DESCRICAO] = ? AND [DATACADASTRO] = ? AND [DATALIMITE] = ?" InsertCommand="INSERT INTO [Lancamento] ([CODIGO], [DESCRICAO], [DATACADASTRO], [DATALIMITE]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Lancamento] SET [DESCRICAO] = ?, [DATACADASTRO] = ?, [DATALIMITE] = ? WHERE [CODIGO] = ? AND [DESCRICAO] = ? AND [DATACADASTRO] = ? AND [DATALIMITE] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_CODIGO" Type="Int32" />
                <asp:Parameter Name="original_DESCRICAO" Type="String" />
                <asp:Parameter Name="original_DATACADASTRO" Type="String" />
                <asp:Parameter Name="original_DATALIMITE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CODIGO" Type="Int32" />
                <asp:Parameter Name="DESCRICAO" Type="String" />
                <asp:Parameter Name="DATACADASTRO" Type="String" />
                <asp:Parameter Name="DATALIMITE" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="txtConsulta" DefaultValue="Doi" Name="DESCRICAO2" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="DESCRICAO" Type="String" />
                <asp:Parameter Name="DATACADASTRO" Type="String" />
                <asp:Parameter Name="DATALIMITE" Type="String" />
                <asp:Parameter Name="original_CODIGO" Type="Int32" />
                <asp:Parameter Name="original_DESCRICAO" Type="String" />
                <asp:Parameter Name="original_DATACADASTRO" Type="String" />
                <asp:Parameter Name="original_DATALIMITE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>


</asp:Content>

