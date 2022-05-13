using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SegundoExamenParcial
{
    public partial class _Default : Page
    {
        static List<Pelicula> peliculas = new List<Pelicula>();
        static List<Actor> actores = new List<Actor>();
        private void SaveJsonMovie()
        {
            string json = JsonConvert.SerializeObject(peliculas);
            string archivo = Server.MapPath("zPeliculas.json");
            System.IO.File.WriteAllText(archivo, json);
        }
        private void ReadJsonMovie()
        {
            string archivo = Server.MapPath("zPeliculas.json");
            StreamReader jsonStream = File.OpenText(archivo);
            string json = jsonStream.ReadToEnd();
            jsonStream.Close();

            peliculas = JsonConvert.DeserializeObject<List<Pelicula>>(json);

            if (peliculas == null)
            {
                peliculas = new List<Pelicula>();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ReadJsonMovie();
            }
        }

        protected void ButtonAddData_Click(object sender, EventArgs e)
        {
            Pelicula movie = new Pelicula();
            movie.Titulo = TextBoxTitulo.Text;
            movie.Age = Calendar2.SelectedDate;
            movie.Genero = TextBoxGenero.Text;
            movie.Estudio = TextBoxEstudio.Text;
            movie.Elenco = actores.ToArray().ToList();

            peliculas.Add(movie);
            actores.Clear();
            SaveJsonMovie();
        }

        protected void ButtonAddActor_Click(object sender, EventArgs e)
        {
            Actor actor = new Actor();
            actor.Nombre = TextBoxName.Text;
            actor.FNacimiento = Calendar1.SelectedDate;

            actores.Add(actor);

            GridView1.DataSource = actores;
            GridView1.DataBind();
        }
    }
}