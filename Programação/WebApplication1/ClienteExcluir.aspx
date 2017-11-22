<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="ClienteExcluir.aspx.cs" Inherits="WebApplication1.ClienteExcluir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1">
        <ItemTemplate>
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Eval("nome") %>' />
            <br />
            <asp:Label ID="pessoaLabel" runat="server" OnPreRender="pessoaLabel_PreRender" Text='<%# Eval("pessoa") %>' />
            <br />
            <asp:Label ID="certidaoLabel" runat="server" Text='<%# Eval("certidao") %>' />
            <br />
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectOne" TypeName="WebApplication1.DAL.DALCliente">
        <SelectParameters>
            <asp:SessionParameter Name="id" SessionField="idClienteExcluir" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>