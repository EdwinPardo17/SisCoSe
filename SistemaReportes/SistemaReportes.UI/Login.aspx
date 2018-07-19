<%@ Page Title="Ingresar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaReportes.UI.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <table>


       <tr>
    <td>Usuario</td>
    <td> <asp:TextBox ID="txtUsuario" runat="server" ></asp:TextBox></td> 
    
  </tr>
  <tr>
    <td>Contraseña</td>
    <td><asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox></td> 
    
  </tr>
   </table>

    <asp:Button ID="btnIngresar" runat="server" Text="Entrar" OnClick="Button_Click" />
    <br />
     <asp:Label ID="lblMensaje" runat="server" Font-Size="X-Large"></asp:Label>  

</asp:Content>

