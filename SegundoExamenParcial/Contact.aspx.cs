using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SegundoExamenParcial
{
    public partial class Contact : Page
    {
        static List<Pelicula> peliculas = new List<Pelicula>();
        string SearchMovie;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonDelete_Click(object sender, EventArgs e)
        {
            SearchMovie = TextBoxSearchDelete.Text;
            bool encontrado = false;

            foreach (var peli in peliculas)
            {
                Actor Delete = peli.Elenco.Find(c => c.Nombre == SearchMovie);

                if (Delete != null)
                {
                    TextBoxNameMovie.Text = Delete.Nombre;
                    encontrado = true;
                }
            }
            if (!encontrado)
            {
                Response.Write("<script>alert('no se encontró el carné')</script>");
                SearchMovie = "";
            }
        }
    }
}