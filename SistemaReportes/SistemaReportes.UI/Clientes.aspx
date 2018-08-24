<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="SistemaReportes.UI.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <link href="Styles/index.css" rel="stylesheet" type="text/css" />

    <div class="container">
           <img src="Imagenes/Logo.jpeg" alt="Alternate Text" width="200px" />
          
           <div class="col-sm-12 text-center">
    <div class="form-inline">
        
        <div class="form-group">
   <h2><asp:Label runat="server">Clientes:</asp:Label> </h2>
       <asp:DropDownList ID="ddlEstado" runat="server"
            CssClass="form-control" >
           </asp:DropDownList> <br />
            </div>
            <br />  
        <div class="form-group" style="padding-top:20px">&nbsp;&nbsp;
            <asp:Button runat="server" ID="btnBusca" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBusca_Click"/>
      </div>       
    </div>   	
     </div>
 </div>
    <br />  
<%--     <div class="form-group" runat="server" id="divActivos">
         
        <h4 runat="server" id="lbLista"></h4>
        <asp:ListView ID="lvAgencias" runat="server"
            GroupItemCount="3"
            ItemType="SistemaReportes.DATA.Clientes" DataKeyNames="idClientes">
            <EmptyDataTemplate>
                <table>
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td runat="server" align="center">
                                           
                             <h2><%#: Item.nombreCliente %> </h2>  
                                <p>Telefono: <%#: Item.telefono %></p>  
                                <p>Email: <%#: Item.email %>  </p>
                                <br />
                                <asp:Button ID="btnElimina" runat="server" Text="Suspender" CssClass="btn btn-danger btn-sm" OnClick="btnElimina_Click" CommandArgument="<%# Item.idClientes %>" />
                                <br />
                                <br />
                         

                </td>
            </ItemTemplate>
			
            <LayoutTemplate>
                <table style="width: 100%;">
                    <tbody>
                        <tr>
                            <td>
                                <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                    <tr id="groupPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr></tr>
                    </tbody>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>--%>

<%--    <div class="form-group" runat="server" id="divSuspen">
         <asp:Label runat="server" ID="Label1"></asp:Label>
         
        <h3 runat="server" id="H1"></h3>
        <center>
        <asp:ListView ID="lvAgenciaD" runat="server"
            GroupItemCount="3"
            ItemType="SistemaReportes.DATA.Clientes" DataKeyNames="idClientes">
            <EmptyDataTemplate>
                <table>
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td runat="server">
                    <table align="center">
                        <tr>
                            <td>
                                                             
                             <h2><%#: Item.nombreCliente %> </h2>  
                                <p>Telefono: <%#: Item.telefono %></p>  
                                <p>Email: <%#: Item.email %>  </p>
                                <br />
                                <asp:Button ID="btnAvtiva" runat="server" Text="Activar" CssClass="btn btn-success" OnClick="btnAvtiva_Click" CommandArgument="<%# Item.idClientes %>" />
                                
                            </td>
                        </tr>
                    </table>

                </td>
            </ItemTemplate>
			
            <LayoutTemplate>
                <table style="width: 100%;">
                    <tbody>
                        <tr>
                            <td>
                                <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                    <tr id="groupPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr></tr>
                    </tbody>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        </center>
    </div>--%>
</asp:Content>
