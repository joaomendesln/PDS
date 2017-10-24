<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teste.aspx.cs" Inherits="WebApplication1.Teste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/teste.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <header>
          <div class="blog-masthead">
            <div class="container">
              <nav class="nav">
                <a class="nav-link active" href="#">Home</a>
                <a class="nav-link" href="#">New features</a>
                <a class="nav-link" href="#">Press</a>
                <a class="nav-link" href="#">New hires</a>
                <a class="nav-link" href="#">About</a>
              </nav>
            </div>
          </div>

          <div class="blog-header">
            <div class="container">
              <h1 class="blog-title">The Bootstrap Blog</h1>
              <p class="lead blog-description">An example blog template built with Bootstrap.</p>
            </div>
          </div>
        </header>

        <main role="main" class="container">

            <div class="row">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCliente" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="idCliente" HeaderText="idCliente" InsertVisible="False" ReadOnly="True" SortExpression="idCliente" />
                        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                        <asp:BoundField DataField="telefones" HeaderText="telefones" SortExpression="telefones" />
                        <asp:BoundField DataField="cidade" HeaderText="cidade" SortExpression="cidade" />
                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                        <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
                        <asp:CheckBoxField DataField="pessoa" HeaderText="pessoa" SortExpression="pessoa" />
                        <asp:BoundField DataField="certidao" HeaderText="certidao" SortExpression="certidao" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testeConnectionString %>" SelectCommand="SELECT * FROM [Cliente]"></asp:SqlDataSource>
             </div>
        </main><!-- /.container -->

        <footer class="blog-footer">
          <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
          <p>
            <a href="#">Back to top</a>
          </p>
        </footer>


        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="../../../../assets/js/vendor/popper.min.js"></script>
        <script src="../../../../dist/js/bootstrap.min.js"></script>
    </div>
    </form>
</body>
</html>
