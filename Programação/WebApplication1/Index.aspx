<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
         <div class="col-md-4">
             <asp:Button ID="Button1" runat="server" Text="Cadastro de Clientes" OnClick="Button1_Click" PostBackUrl="~/Cliente.aspx" />
         </div>
         <div class="col-md-4">
             <asp:Button ID="Button2" runat="server" Text="Button" />
         </div>
         <div class="col-md-4">
             <asp:Button ID="Button3" runat="server" Text="Button" />
         </div>
         <div class="col-md-4">
             <asp:Button ID="Button4" runat="server" Text="Button" />
         </div>
         <div class="col-md-4">
             <asp:Button ID="Button5" runat="server" Text="Button" />
         </div>
         <div class="col-md-4">
             <asp:Button ID="Button6" runat="server" Text="Button" />
         </div>
         <div class="col-md-4">
             <asp:Button ID="Button7" runat="server" Text="Button" />
         </div>
         <div class="col-md-4">
             <asp:Button ID="Button8" runat="server" Text="Button" />
         </div>
         <div class="col-md-4">
             <asp:Button ID="Button9" runat="server" Text="Button" />
         </div>
    </div>
</asp:Content>
