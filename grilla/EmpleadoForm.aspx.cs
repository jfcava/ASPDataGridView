using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}