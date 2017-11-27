<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Funcionario.aspx.cs" Inherits="WebApplication1.Funcionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1">
                <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                <ItemTemplate>
                    <td>
                        <asp:Label ID="idFuncionarioLabel" runat="server" Text='<%# Eval("idFuncionario") %>' OnPreRender="idFuncionarioLabel_PreRender" />
                        <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
                    </td>
                    <td>
                        <asp:Label ID="carteiraDeTrabalhoLabel" runat="server" Text='<%# Eval("carteiraDeTrabalho") %>' />
                    </td>
                    <td>
                        <asp:Label ID="salarioLabel" runat="server" Text='<%# Eval("salario") %>' />
                    </td>
                    <td>
                        <asp:Label ID="motoristaLabel" runat="server" OnPreRender="motoristaLabel_PreRender" Text='<%# Eval("motorista") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tecnicoLabel" runat="server" OnPreRender="tecnicoLabel_PreRender" Text='<%# Eval("tecnico") %>' />
                    </td>
                    <td>
                        <asp:Label ID="observacaoLabel" runat="server" Text='<%# Eval("observacao") %>' />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll" TypeName="WebApplication1.DAL.DALFuncionario"></asp:ObjectDataSource>
    </table>
</asp:Content>
