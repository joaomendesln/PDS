using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Funcionario : System.Web.UI.Page
    {       
        int idFuncionario;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void motoristaLabel_PreRender(object sender, EventArgs e)
        {
            if ((sender as Label).Text == "False") (sender as Label).Text = "Não";
            else (sender as Label).Text = "Sim";
        }

        protected void tecnicoLabel_PreRender(object sender, EventArgs e)
        {
            if ((sender as Label).Text == "False") (sender as Label).Text = "Não";
            else (sender as Label).Text = "Sim";
        }

        protected void idFuncionarioLabel_PreRender(object sender, EventArgs e)
        {
            idFuncionario = int.Parse((sender as Label).Text);
            (sender as Label).Visible = false;
        }

        protected void LinkButtonEditar_PreRender(object sender, EventArgs e)
        {
            (sender as LinkButton).CommandName = Convert.ToString(idFuncionario);
        }

        protected void LinkButtonExcluir_PreRender(object sender, EventArgs e)
        {
            (sender as LinkButton).CommandName = Convert.ToString(idFuncionario);
        }

        protected void LinkButtonEditar_Click(object sender, EventArgs e)
        {
            Session["idFuncionarioEditar"] = (sender as LinkButton).CommandName;
            Response.Redirect("~\\FuncionarioEditar.aspx");  
        }

        protected void LinkButtonExcluir_Click(object sender, EventArgs e)
        {
            Session["idFuncionarioExcluir"] = (sender as LinkButton).CommandName;
            Response.Redirect("~\\FuncionarioExcluir.aspx");        
        }
    }
}
