<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="EmpleadoForm.aspx.cs" Inherits="grilla.EmpleadoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Formulario con distintos tipos de entrada--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
            <%if (Request.QueryString["Id"] == null)
                {  %>
            <h3>Agregar nuevo Empleado</h3>
            <%}
                else
                {  %>
            <h3>Modificar Empleado</h3>
            <%} %>
            <hr />
             <div class="mb-3">
                <asp:Label Text="Id:" runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Nombre:" runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Edad:" runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtEdad" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Cargo:" runat="server" CssClass="form-label" />
                <asp:DropDownList ID="ddlCargos" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label Text="Fecha de Ingreso:" runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtFechaIngreso" CssClass="form-control" TextMode="Date" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Notas:" runat="server" CssClass="form-label" />
                <asp:TextBox runat="server" ID="txtNotas" CssClass="form-control" TextMode="MultiLine" />
            </div>
            <div class="mb-3">
                <asp:CheckBox Text="" ID="chkEstudiante" runat="server" />
                <asp:Label Text="Estudiante" runat="server" CssClass="form-check-label" />
                <asp:CheckBox Text="" ID="chkSenior" runat="server" CssClass="form-check-input" />
                <asp:Label Text="Senior" runat="server" CssClass="form-check-label" />
            </div>
            <div class="mb-3">
                <asp:Label Text="Afiliado?" runat="server" CssClass="form-check-label" />
                <div>
                    <%--Al utilizar GroupName permite que se seleccione solo un radiobutton --%>
                    <asp:RadioButton ID="rbSi" runat="server" GroupName="afiliados" />
                    <asp:Label Text="Si" runat="server" CssClass="form-check-label" />
                    <asp:RadioButton ID="rbNo" Checked="true" runat="server" GroupName="afiliados" />
                    <asp:Label Text="No" runat="server" CssClass="form-check-label" />
                </div>
            </div>
            <asp:Button Text="Aceptar" runat="server" ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" />
            <asp:Button Text="Eliminar" runat="server" ID="btnEliminar" CssClass="btn btn-primary" onclick="btnEliminar_Click" />            
            <asp:Button Text="Modificar" runat="server" ID="btnModificar" CssClass="btn btn-primary" onclick="btnModificar_Click" />            
            <asp:Button Text="Cancelar" runat="server" ID="btnCancelar" CssClass="btn btn-primary" onclick="btnCancelar_Click" />            


        </div>
        <div class="col-4"></div>

    </div>


</asp:Content>
