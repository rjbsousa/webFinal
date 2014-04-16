using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace webFinal
{
    public partial class editarCliente : System.Web.UI.Page
    {
        dbWebFinalEntities db = new dbWebFinalEntities();
        Cliente c = new Cliente();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!this.IsPostBack){
                int id = Convert.ToInt32(Request.QueryString["id"]);
                Cliente c = db.Cliente.Find(id);
                txtClientePK.Text = c.clientePK.ToString();
                txtNome.Text = c.nome;
                txtMorada.Text = c.morada;
                txtLocalidade.Text = c.localidade;
                txtCodPostal.Text = c.codigoPostal;
                txtNIF.Text = c.NIF;

                string localizacao = txtMorada.Text + "," + txtCodPostal.Text + "," + @txtLocalidade.Text + ",PT";
                mapa.ImageUrl += localizacao;
                Label1.Text = mapa.ImageUrl;
            }
        }

        protected void cmdAltera_Click(object sender, EventArgs e)
        {
            db.editaCliente(Convert.ToInt32(txtClientePK.Text), txtNome.Text, txtMorada.Text, txtLocalidade.Text, txtCodPostal.Text, txtNIF.Text);
            db.SaveChanges();
            
            Response.Redirect("~/privada/default.aspx",true);
        }

        protected void cmdRemove_Click(object sender, EventArgs e)
        {
            db.eliminaCliente(Convert.ToInt32(txtClientePK.Text)); ;
            db.SaveChanges();

            Response.Redirect("~/privada/default.aspx", true);
        }
    }
}