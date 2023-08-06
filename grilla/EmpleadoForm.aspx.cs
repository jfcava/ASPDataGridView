using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;


namespace grilla
{
    public partial class EmpleadoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlCargos.Items.Add("Camarografo");
            ddlCargos.Items.Add("Editor");
            ddlCargos.Items.Add("Productor");
            ddlCargos.Items.Add("Sonidista");
            ddlCargos.Items.Add("Periodista");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Empleado newbie = new Empleado();
            
            newbie.Nombre = txtNombre.Text;
            newbie.Edad = int.Parse(txtEdad.Text);
            newbie.Cargo = ddlCargos.SelectedValue;
            newbie.FechaIngreso = DateTime.Parse(txtFechaIngreso.Text);
            newbie.Notas = txtNotas.Text;
            newbie.Estudiante = chkEstudiante.Checked;
            newbie.Senior = chkSenior.Checked;

            if (rbSi.Checked)
                newbie.Afiliado = true;
            else if (rbNo.Checked)
                newbie.Afiliado = false;

            List<Empleado> lista = new List<Empleado>();
            lista = (List<Empleado>)Session["listaEmpleados"];

            lista.Add(newbie);

            Response.Redirect("DataGridView.aspx", false);

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("DataGridView.aspx", false);
        }
    }
}