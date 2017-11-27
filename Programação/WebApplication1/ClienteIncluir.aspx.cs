using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ClienteIncluir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            protected void ButtonInserir_Click(object sender, EventArgs e)
            {
                Modelo.Cliente cliente = new Modelo.Cliente();
                cliente.nome = TextBoxNome.Text;
                cliente.telefones = TextBoxTelefones.Text;
                cliente.cidade = TextBoxCidade.Text;
                cliente.estado = TextBoxEstado.Text;
                cliente.endereco = TextBoxEndereco.Text;
                if (RadioButtonCPF.Checked) cliente.pessoa = false;
                else cliente.pessoa = true;
                cliente.certidao = TextBoxCertidao.Text;
                cliente.email = TextBoxEmail.Text;

                DAL.DALCliente DALCliente = new DAL.DALCliente();
                DALCliente.InsertCliente(cliente);


            }
        }
    }
}
