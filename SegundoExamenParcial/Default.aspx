<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SegundoExamenParcial._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Ingreso de Pelicula</h2>
            <p>Titulo
                <asp:TextBox ID="TextBoxTitulo" runat="server"></asp:TextBox>
            </p>
            <p>Año
                <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            </p>
            <p>Genero
                <asp:TextBox ID="TextBoxGenero" runat="server"></asp:TextBox>
            </p>
            <p>Estudio
                <asp:TextBox ID="TextBoxEstudio" runat="server"></asp:TextBox>
            </p>
            <p>Elenco / Actores</p>
            <p>
                Nombre
                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="ButtonAddActor" runat="server" OnClick="ButtonAddActor_Click" Text="Ingresar Actor" />
            </p>
            <p>
                fecha de nacimiento<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" Height="166px" Width="238px">
                </asp:GridView>
            </p>
            <p>
                <asp:Button ID="ButtonAddData" runat="server" OnClick="ButtonAddData_Click" Text="Ingresar Datos" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Peliculas</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
