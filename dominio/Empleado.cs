using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ejemplo1
{
    public class Empleado
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Edad { get; set; }
        public string Cargo { get; set; }
        public bool Estudiante { get; set; }
        public bool Senior { get; set; }
        public  string Notas { get; set; }
        public DateTime FechaIngreso { get; set; }
    }
}