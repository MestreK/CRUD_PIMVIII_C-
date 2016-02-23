<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication5._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="Esquerda">
        <ul>
            <li><a href="Incluir.aspx">Incluir </a></li>
            <li><a href="Consultar.aspx">Consultar </a></li>
            <li><a href="#">Sair </a></li>
        </ul>

        <div id="Calendario">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="256px" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest">
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
        <asp:Literal ID="litMensagem" runat="server"></asp:Literal>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="544px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                <asp:BoundField DataField="DATALIMITE" HeaderText="DATALIMITE" SortExpression="DATALIMITE" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AtividadesAcademicas %>" ProviderName="<%$ ConnectionStrings:AtividadesAcademicas.ProviderName %>" SelectCommand="SELECT * FROM [DataHoje]"></asp:SqlDataSource>
    </div>

</asp:Content>

