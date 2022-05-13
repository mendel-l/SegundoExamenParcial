using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SegundoExamenParcial
{
    public class Pelicula
    {
        public string Titulo { get; set; }
        public DateTime Age { get; set; }
        public string Genero { get; set; }
        public string Estudio { get; set; }
        public List<Actor> Elenco { get; set; }
    }
}