using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ClienteEditar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Label1_PreRender(object sender, EventArgs e)
        {
            (sender as Label).Text = Session["idClienteEditar"].ToString();
        }
    }
}