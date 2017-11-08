<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="WebApplication1.Cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <% foreach(WebApplication1.Modelo.Cliente cliente in ObjectDataSource1.FilterParameters)%>--%>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1">
        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <ItemTemplate>
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            <br />
            <asp:Label ID="pessoaLabel" runat="server" OnLoad="pessoaLabel_Load" OnPreRender="pessoaLabel_PreRender" Text='<%# Eval("pessoa") %>' />
            <br />
            <asp:Label ID="certidaoLabel" runat="server" Text='<%# Eval("certidao") %>' />
            <br />
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectAll" TypeName="WebApplication1.DAL.DALCliente"></asp:ObjectDataSource>
</asp:Content>
