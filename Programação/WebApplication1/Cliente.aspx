<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="WebApplication1.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <% foreach(WebApplication1.Modelo.Cliente cliente in ObjectDataSource1.FilterParameters)%>--%><asp:LinkButton ID="LinkButtonIncluir" runat="server" PostBackUrl="~/ClienteIncluir.aspx">Incluir</asp:LinkButton>
    <table class="table">
        <tr>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <ItemTemplate>
                    <td>
                        <asp:Label ID="idClienteLabel" runat="server" Text='<%# Eval("idCliente") %>' OnPreRender="idClienteLabel_PreRender" />
                        <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="pessoaLabel" runat="server" OnLoad="pessoaLabel_Load" OnPreRender="pessoaLabel_PreRender" Text='<%# Eval("pessoa") %>' />
                    </td>
                    <td>
                        <asp:Label ID="certidaoLabel" runat="server" Text='<%# Eval("certidao") %>' />
                    </td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButtonEditar" runat="server" OnClick="LinkButtonEditar_Click" OnPreRender="LinkButtonEditar_PreRender">Editar</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButtonExcluir" runat="server" OnClick="LinkButtonExcluir_Click" OnPreRender="LinkButtonExcluir_PreRender">Excluir</asp:LinkButton>
                    </td>
                </ItemTemplate>
            </asp:DataList>
        </tr>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll" TypeName="WebApplication1.DAL.DALCliente"></asp:ObjectDataSource>
    </table>
</asp:Content>
