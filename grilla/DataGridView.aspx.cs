using ejemplo1;
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
            EmpleadoNegocio negocio = new EmpleadoNegocio();
            dgvEmpleados.DataSource = negocio.listar();
            dgvEmpleados.DataBind();
        }
    }
}