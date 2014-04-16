using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webFinal.Privada
{
    public partial class adicionarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdAdiciona_Click(object sender, EventArgs e)
        {
            dbWebFinalEntities db = new dbWebFinalEntities();
            db.adicionaCliente(txtNome.Text, txtMorada.Text, txtLocalidade.Text, txtCodPostal.Text, txtNIF.Text);
            db.SaveChanges();
            Response.Redirect("~/privada/default.aspx", true);
        }
    }
}