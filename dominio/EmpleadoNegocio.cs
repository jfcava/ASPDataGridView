using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace ejemplo1
{
    public class EmpleadoNegocio
    {
        public List<Empleado> listar() {
        
            List<Empleado> lista = new List<Empleado>();
            lista.Add(new Empleado());
            lista.Add(new Empleado());

            lista[0].Id = 0;
            lista[0].Nombre = "Juan";
            lista[0].Edad = 36;
            lista[0].Cargo = "Camarografo";
            lista[0].Estudiante = true;
            lista[0].Senior = false;
            lista[0].Notas = "Es un empleado medio vago";
            lista[0].FechaIngreso = DateTime.Now;

            lista[1].Id = 1;
            lista[1].Nombre = "Carlos";
            lista[1].Edad = 29;
            lista[1].Cargo = "Editor";
            lista[1].Estudiante = false;
            lista[1].Senior = true;
            lista[1].Notas = "Tiene menos ganas de laburar que el Dipy";
            lista[1].FechaIngreso = DateTime.Now;

            return lista;
        }

    }
}