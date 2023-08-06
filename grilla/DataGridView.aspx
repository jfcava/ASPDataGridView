<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="DataGridView.aspx.cs" Inherits="grilla.DataGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-md">
        <%-- Pongo en false el AutoGenerateColumns, y eligo que columnas ver y de que tipo son.--%>
        <asp:GridView runat="server" ID="dgvEmpleados" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField HeaderText="Nombre" DataField="Nombre"/>
                <asp:BoundField HeaderText="Edad" DataField="Edad"/>
                <asp:BoundField HeaderText="Cargo" DataField="Cargo"/>
                <asp:CheckBoxField HeaderText="Estudiante?" DataField="Estudiante" />
                <asp:CheckBoxField HeaderText="Senior?" DataField="Senior" />
                <asp:BoundField HeaderText="Notas" DataField="Notas" />
                <asp:BoundField HeaderText="Fecha Ingreso" DataField="FechaIngreso" />
            </Columns>
        </asp:GridView>
        <a href="EmpleadoForm.aspx">Agregar</a>
    </div>
</asp:Content>
