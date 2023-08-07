using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grilla
{
    public partial class DataGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listaEmpleados"] == null)
            {
                EmpleadoNegocio negocio = new EmpleadoNegocio();
                Session.Add("listaEmpleados", negocio.listar());
            }

            dgvEmpleados.DataSource = Session["listaEmpleados"];
            dgvEmpleados.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpleadoForm.aspx", false);
        }

        protected void dgvEmpleados_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(dgvEmpleados.SelectedDataKey.Value.ToString());
            Response.Redirect("EmpleadoForm.aspx?Id=" + id);
        }
    }
}