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
    }
}