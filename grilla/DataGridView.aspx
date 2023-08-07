<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="DataGridView.aspx.cs" Inherits="grilla.DataGridView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-md">
        <hr />
        <%--
            Pongo en false el autogeneratecolumns, y eligo que columnas ver y de que tipo son.
        OnSelectIndexChanged captura cuando se produce una seleccion desde el CommandField
        --%>
        <asp:GridView runat="server" ID="dgvEmpleados" DataKeyNames="Id" OnSelectedIndexChanged="dgvEmpleados_SelectedIndexChanged" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                <asp:BoundField HeaderText="Edad" DataField="Edad" />
                <asp:BoundField HeaderText="Cargo" DataField="Cargo" />
                <asp:CheckBoxField HeaderText="Estudiante" DataField="Estudiante" />
                <asp:CheckBoxField HeaderText="Senior" DataField="Senior" />
                <asp:BoundField HeaderText="Notas" DataField="Notas" />
                <asp:BoundField HeaderText="Fecha Ingreso" DataField="FechaIngreso" />
                <asp:CheckBoxField HeaderText="Afiliado" DataField="Afiliado" />
                <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
            </Columns>
        </asp:GridView>
        <asp:Button Text="Agregar" CssClass="btn btn-primary" ID="btnAgregar" OnClick="btnAgregar_Click" runat="server" />
    </div>
</asp:Content>
