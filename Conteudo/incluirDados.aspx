<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="IncluirDados.aspx.cs" Inherits="WebApplication5.incluirDados"  %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="Esquerda">
    <ul>
	    <li><a href="Incluir.aspx"> Voltar </a></li>
		<li><a href="#"> Sair </a></li>
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

        <table id="tbLancamento">
            <tr>
                <td id="Titulo" colspan="2"> Cadastrar Atividade</td>
            </tr>
           
            <tr>
               
            <td id="label"><asp:Label ID="Label2" runat="server" Text="Descrição: "></asp:Label></td>

            <td>
                <asp:TextBox ID="txtDescricao" runat="server" BorderColor="#3366FF" BorderStyle="Groove"></asp:TextBox>

            </td>
            </tr>
            <tr>

            <td id="label"><asp:Label ID="Label1" runat="server" Text="Data de Cadastro: "></asp:Label></td>
                

            <td> 
                <asp:TextBox ID="txtDataCadastro" runat="server" nKeyUp="mascara_data(this)" MaxLength="10" AutoCompleteType="Disabled" AutoPostBack="True" BorderColor="#3366FF" BorderStyle="Groove" ValidateRequestMode="Enabled" ></asp:TextBox>

                <ajaxToolkit:AnimationExtender ID="txtDataCadastro_AnimationExtender" runat="server" BehaviorID="txtDataCadastro_AnimationExtender" TargetControlID="txtDataCadastro">
                </ajaxToolkit:AnimationExtender>
                <ajaxToolkit:CalendarExtender ID="txtDataCadastro_CalendarExtender" runat="server" TargetControlID="txtDataCadastro" format="dd/MM/yyyy" firstdayofweek="Sunday" />

            </td>
                
                
                


<br />

                
            </tr>

            <tr>
                <td id="label">
                <asp:Label ID="Label3" runat="server" Text="Data Limite: "></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="txtDataLimite" runat="server" AutoPostBack="True" BorderColor="#3366FF" BorderStyle="Groove"></asp:TextBox>
                <ajaxToolkit:AnimationExtender ID="txtDataLimite_AnimationExtender" runat="server" BehaviorID="txtDataLimite_AnimationExtender" TargetControlID="txtDataLimite">
                </ajaxToolkit:AnimationExtender>
                <ajaxToolkit:CalendarExtender ID="txtDataLimite_CalendarExtender" runat="server" TargetControlID="txtDataLimite" format="dd/MM/yyyy" firstdayofweek="Sunday" />
            
            </td>
            
            
            </tr>
            <tr>
                <td></td>
                
                <td>
                    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="Button1_Click" BackColor="#3399FF" BorderStyle="Groove" /></td>
            </tr>
        
            <tr>
                <td colspan="2">

                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                      ControlToValidate="txtDescricao"
                      ErrorMessage="Descrição deve ser preenchida"
                      ForeColor="Red">
                </asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td colspan="2">

                <asp:RangeValidator 
                    id="ProgrammaticID" 
                    ControlToValidate="txtDataCadastro" 
                    MinimumValue="14-11-2015"
                    MaximumValue="14-11-2030" 
                    Type="Date" 
                    ErrorMessage="Message to display in ValidationSummary control"
                    Text="Data válida entre 14/11/2015 e 14/11/2030"
                    ForeColor="Red"
                    runat="server" >
                    
                   </asp:RangeValidator>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                <asp:RangeValidator 
                    id="RangeValidator1" 
                    ControlToValidate="txtDataLimite" 
                    MinimumValue="14-11-2015"
                    MaximumValue="14-11-2030" 
                    Type="Date" 
                    ErrorMessage="Data válida entre 25-11-2015 e 14-11-2030"
                    Text="Data válida entre 14/11/2015 e 14/11/2030"
                    ForeColor="Red"
                    runat="server" >
                    
                   </asp:RangeValidator>
            
                </td>
            </tr>
        
            </table>

       
            
        
    </div>
</asp:Content>
