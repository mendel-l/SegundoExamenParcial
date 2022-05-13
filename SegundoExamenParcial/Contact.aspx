<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SegundoExamenParcial.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Eliminar Pelicula</h3>
    <p>pelicula
        <asp:TextBox ID="TextBoxSearchDelete" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="ButtonDelete" runat="server" OnClick="ButtonDelete_Click" Text="Delete" />
    </p>
    <br />
    nombre pelicula <asp:TextBox ID="TextBoxNameMovie" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="ButtonDeleteMovie" runat="server" Text="Eliminar Pelicula" />
</asp:Content>
