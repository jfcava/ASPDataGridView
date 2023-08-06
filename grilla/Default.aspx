<%@ Page Title="" Language="C#" MasterPageFile="~/Global.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="grilla.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-1"></div>
        <div class="col-6">
            <h1>Practica con GridView</h1>
            <h4>Utilice un Mockup para obtener los datos de la grilla.</h4>
            <h4>Como esta diseñado sin conexion a base de datos, estos se guardan en Session.</h4>
            <asp:Button Text="Ir a Verlo!" runat="server" id="btnIraVerlo" CssClass="btn btn-primary" OnClick="btnIraVerlo_Click"/>
        </div>
    </div>
</asp:Content>
