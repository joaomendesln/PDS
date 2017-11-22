using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Cliente : System.Web.UI.Page
    {
        int idCliente;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void pessoaLabel_Load(object sender, EventArgs e)
        {
        }

        protected void pessoaLabel_PreRender(object sender, EventArgs e)
        {
            if ((sender as Label).Text == "False") (sender as Label).Text = "CPF";
            else (sender as Label).Text = "CNPJ";
        }

        protected void idClienteLabel_PreRender(object sender, EventArgs e)
        {
            idCliente = int.Parse((sender as Label).Text);
            (sender as Label).Visible = false;
        }

        protected void LinkButtonEditar_PreRender(object sender, EventArgs e)
        {
            (sender as LinkButton).CommandName = Convert.ToString(idCliente);
        }

        protected void LinkButtonExcluir_PreRender(object sender, EventArgs e)
        {
            (sender as LinkButton).CommandName = Convert.ToString(idCliente);
        }

        protected void LinkButtonEditar_Click(object sender, EventArgs e)
        {
            Session["idClienteEditar"] = (sender as LinkButton).CommandName;
            Response.Redirect("~\\ClienteEditar.aspx");  
        }

        protected void LinkButtonExcluir_Click(object sender, EventArgs e)
        {
            Session["idClienteExcluir"] = (sender as LinkButton).CommandName;
            Response.Redirect("~\\ClienteExcluir.aspx");        
        }
    }
}