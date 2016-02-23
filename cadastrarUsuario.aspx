<%@ Page Title="cadastrarUsuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadastrarUsuario.aspx.cs" Inherits="WebApplication5.cadastrarUsuario" %>

<asp:Content ID="UsuarioContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
            <div id="loginForm" class="wrapper">
                <div class="form-signin">
                    <a href="Entrar.aspx"><img src="Imagens/voltar.png" / alt="Voltar" width="50px" align="right"> </a>
                    
                    <h3 class="form-signin-heading">Formulário de Cadastro</h3>
                    <!--<hr class="colorgraph"><br>-->
                    <div id="divStatus">
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </div>
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" CausesValidation="true"></asp:TextBox><br />
                    <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>
                    <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" TextMode="Password" CausesValidation="true"></asp:TextBox><br />
                    
                    
                            
                        <asp:Button ID="btnCadastrar" runat="server" CssClass="btn btn-lg btn-primary" ToolTip="Cadastrar" Text="Cadastrar" OnClick="btnCadastrar_Click"/>
                           
                    <br /> 
                    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                      ControlToValidate="txtUsuario"
                      ErrorMessage="Usuario deve ser preenchido"
                      ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                      ControlToValidate="txtSenha"
                      ErrorMessage="Senha deve ser preenchida"
                      ForeColor="Red">
                    </asp:RequiredFieldValidator>

                    

                    
                                   
                   
                </div>
            </div>
        </div>

        <div style="text-align: center;">
            <img alt="" src="Imagens/UNIP.jpg" id="imgUnip" style="width: 20%; margin: 0;" />
        </div>

</asp:Content>
