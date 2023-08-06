<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="EmpleadoForm.aspx.cs" Inherits="grilla.EmpleadoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<%--Formulario con distintos tipos de entrada--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
            <h3>Agregar nuevo Empleado</h3>
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

        </div>
        <div class="col-4"></div>

    </div>


</asp:Content>
