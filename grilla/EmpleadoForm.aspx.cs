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
            if (!IsPostBack)
            {
                ddlCargos.Items.Add("Camarógrafo");
                ddlCargos.Items.Add("Editor");
                ddlCargos.Items.Add("Técnico");
                ddlCargos.Items.Add("Productor");
                ddlCargos.Items.Add("Sonidista");
                ddlCargos.Items.Add("Periodista");

                btnEliminar.Visible = false;
                btnModificar.Visible = false;
            }

            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    btnEliminar.Visible = true;
                    btnAceptar.Enabled = false;
                    btnModificar.Visible = true;

                    int id = int.Parse(Request.QueryString["id"].ToString());
                    List<Empleado> temporal = (List<Empleado>)Session["listaEmpleados"];
                    Empleado seleccionado = temporal.Find(x => x.Id == id);

                    txtId.Text = seleccionado.Id.ToString();
                    txtId.Enabled = false;
                    txtNombre.Text = seleccionado.Nombre;
                    txtEdad.Text = seleccionado.Edad.ToString();
                    //ddlCargos.SelectedValue = seleccionado.Cargo;
                    txtFechaIngreso.Text = seleccionado.FechaIngreso.ToString("yyyy-MM-dd");
                    txtNotas.Text = seleccionado.Notas;
                    chkEstudiante.Checked = seleccionado.Estudiante;
                    chkSenior.Checked = seleccionado.Senior;
                    if (seleccionado.Afiliado == true)
                    {
                        rbSi.Checked = true;
                        rbNo.Checked = false;
                    }
                    else
                        rbNo.Checked = true;
                }
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] == null)
            {
                Empleado newbie = new Empleado();


                newbie.Id = int.Parse(txtId.Text);
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

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("DataGridView.aspx", false);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            List<Empleado> temporal = (List<Empleado>)Session["listaEmpleados"];
            Empleado seleccionado = temporal.Find(x => x.Id == id);

            temporal.Remove(seleccionado);
            Response.Redirect("DataGridView.aspx", false);
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

            int id = int.Parse(Request.QueryString["id"].ToString());
            List<Empleado> temporal = (List<Empleado>)Session["listaEmpleados"];
            Empleado seleccionado = temporal.Find(x => x.Id == id);

            seleccionado.Nombre = txtNombre.Text;
            seleccionado.Edad = int.Parse(txtEdad.Text);
            seleccionado.Cargo = ddlCargos.SelectedValue;
            seleccionado.FechaIngreso = DateTime.Parse(txtFechaIngreso.Text);
            seleccionado.Notas = txtNotas.Text;
            seleccionado.Estudiante = chkEstudiante.Checked;
            seleccionado.Senior = chkSenior.Checked;

            if (rbSi.Checked)
                seleccionado.Afiliado = true;
            else if (rbNo.Checked)
                seleccionado.Afiliado = false;

            Response.Redirect("DataGridView.aspx", false);

        }
    }
}