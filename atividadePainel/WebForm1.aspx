<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="atividadePainel.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style >
     body{
        
         height:500px;
         padding:10px;
         position:relative;
     }
     #form1{
         width:300px;
         position: absolute;
         left: 50%;
         top: 50%;
         transform: translate(-50%, -50%);
         text-align: center;
          border: 1px solid #000;
          border-radius: 15px;
           background-color:#f5f5f5;
         
     }table, th, td{
          border-color:#000;
          border-collapse:collapse;
      }

      .titulo{
          
          color:#000;
          font-size: 1.8em;
          
          
      }
      .tituloTabela{
          background-color:#2196f3;
          color: #fff;
          padding:8px;
          font-size:1.5em

      }
      .tituloTabela:hover{
          background-color:#2196f3;
          color:#444;
      }
      td{
         
          
      }
      .painel:hover{
         color:#444;
      }
      .txtbox:hover{
          background-color:#0AE7F7;
      }
      #corTexto{
          color: red;
      }
     
     
        
     
        

    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table style="width: 100%;" border="0">
            <tr>
                <th class="titulo">Exemplo do Panel em ASP.NET</th>
                
            </tr>
            
            <tr>
                <td><asp:Panel ID="Panel1" runat="server" Width="100%">

                    <asp:Panel class="painel"  ID="pnlInformacao"   runat="server">
                        <table  style="width: 100%;" title="Informações pessoais" border="0">

                            <tr  >
                                   <th class="tituloTabela" " colspan="2"><asp:Label ID="lblTitulo" runat="server" Text="Informações pessoais"></asp:Label></th>
                            </tr>
                        
                            <tr> 
                                
                                <td><asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label></td>
                                <td><asp:TextBox class="txtbox" ID="txtNome" runat="server"></asp:TextBox></td>
                                 
                                 
                                
                                
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblSobrenome" runat="server" Text="Sobrenome"></asp:Label></td>
                                 <td>  <asp:TextBox class="txtbox" ID="txtSobrenome" runat="server"></asp:TextBox><br /></td>
                                 
                               
                                
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblGenero" runat="server" Text="Genero"></asp:Label></td> 
                                <td><asp:TextBox class="txtbox" ID="txtGenero" runat="server" ></asp:TextBox></td> 

                            </tr>

                            <tr>
                                <td> <asp:Label ID="lblCelular" runat="server" Text="Celular"></asp:Label></td>
                                 <td> <asp:TextBox class="txtbox" ID="txtCelular" runat="server"></asp:TextBox></td>

            </tr>
          
                        </table>
                        <asp:Button ID="btnProximoinformacao" runat="server" Text="Proximo" OnClick="btnProximoinformacao_Click" style="height: 26px" />

                        
                    </asp:Panel>



                    <asp:Panel class="painel" ID="pnlDtEndereco"  runat="server" CssClass="auto-style3" Visible="False">

                        <table style="width: 100%;" border="0" title="Detalhes do Endereço">
                            <tr>
                                <th class="tituloTabela" colspan="2"><asp:Label ID="lblDtEndereco" runat="server" Text="Detalhes do Endereço"></asp:Label></th>
                            </tr>

                            <tr>
                                <td> <asp:Label ID="lblEndereco" runat="server" Text="Endereço"></asp:Label></td>
                                <td><asp:TextBox class="txtbox" ID="txtEndereco" runat="server"></asp:TextBox><br /></td>
                                
                            </tr>
                            <tr>
                                <td> <asp:Label ID="lblCidade" runat="server" Text="Cidade"></asp:Label></td>
                                <td> <asp:TextBox class="txtbox" ID="txtCidade" runat="server"></asp:TextBox><br /></td>
                                
                            </tr>
                            <tr>
                                <td><asp:Label ID="lblCep" runat="server" Text="Cep"></asp:Label></td>
                                <td> <asp:TextBox class="txtbox" ID="txtCep" runat="server"></asp:TextBox><br /></td>
                                
                            </tr>
                           
                        </table>

                                <asp:Button ID="btnVoltarEndereco" runat="server" Text="Voltar" OnClick="btnVoltarEndereco_Click"/>
                                <asp:Button ID="btnProximoEndereco" runat="server" Text="Proximo" OnClick="btnProximoEndereco_Click"/>
                                



                    </asp:Panel>
                    <asp:Panel class="painel" ID="pnlLogin" runat="server" Visible="False">
                        <table style="width: 100%;" border="0" title="Área de login">
                            <tr>
                                <th class="tituloTabela" colspan="2">
                                    <asp:Label ID="Label6" runat="server" Text="Área de Login"></asp:Label>
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblUsuario" runat="server" Text="Usuário"></asp:Label>
                                </td>

                                <td>
                                    <asp:TextBox class="txtbox" ID="txtUsuario" runat="server"></asp:TextBox>
                                </td>
                                
                            </tr>

                            <tr>
                                <td> <asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label></td>
                                <td> <asp:TextBox class="txtbox" ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox></td>

                            </tr>
                           
                        </table>

                                    <asp:Button ID="btnVoltarLogin" runat="server" Text="Voltar" OnClick="btnVoltarLogin_Click"  />
                                    <asp:Button ID="btnEnviarLogin" runat="server" Text="Enviar" OnClick="btnEnviarLogin_Click" /><br />
                                    




                    </asp:Panel>
                    <asp:Label ID="lblResposta" runat="server" ></asp:Label>

                    </asp:Panel></td>

                </tr>
               
        </table>
        
    </form>
</body>
</html>
