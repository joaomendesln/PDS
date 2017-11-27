<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="ClienteIncluir.aspx.cs" Inherits="WebApplication1.ClienteIncluir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <asp:TextBox ID="TextBoxNome" runat="server"></asp:TextBox> <br>
    <asp:TextBox ID="TextBoxTelefones" runat="server"></asp:TextBox> <br>
    <%--<select ID="SelectEstado">
        <option value="AC">AC</option>
	    <option value="AL">AL</option>
	    <option value="AP">AP</option>
	    <option value="AM">AM</option>
	    <option value="BA">BA</option>
	    <option value="CE">CE</option>
	    <option value="DF">DF</option>
	    <option value="ES">ES</option>
	    <option value="GO">GO</option>
	    <option value="MA">MA</option>
	    <option value="MT">MT</option>
	    <option value="MS">MS</option>
	    <option value="MG">MG</option>
	    <option value="PA">PA</option>
	    <option value="PB">PB</option>
	    <option value="PR">PR</option>
	    <option value="PE">PE</option>
	    <option value="PI">PI</option>
	    <option value="RJ">RJ</option>
	    <option value="RN">RN</option>
	    <option value="RS">RS</option>
	    <option value="RO">RO</option>
	    <option value="RR">RR</option>
	    <option value="SC">SC</option>
	    <option value="SP">SP</option>
	    <option value="SE">SE</option>
	    <option value="TO">TO</option>
    </select>--%>
    <asp:TextBox ID="TextBoxCidade" runat="server"></asp:TextBox> <br>
    <asp:TextBox ID="TextBoxEstado" runat="server"></asp:TextBox> <br>
    <asp:TextBox ID="TextBoxEndereco" runat="server"></asp:TextBox> <br>
    <asp:RadioButton ID="RadioButtonCPF" runat="server" GroupName="pessoa" />
    <asp:RadioButton ID="RadioButtonCNPJ" runat="server" GroupName="pessoa"/>
    <asp:TextBox ID="TextBoxCertidao" runat="server"></asp:TextBox><br>
    <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox><br>
    <asp:Button ID="ButtonInserir" runat="server" Text="Inserir" OnClick="ButtonInserir_Click" />
</asp:Content>
