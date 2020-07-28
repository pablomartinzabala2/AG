using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
namespace Concesionaria.Clases
{
    public static  class cConexion
    {
        public static  string Cadenacon()
        {
            //*****CASA**********
           //   string cadena = "Data Source=DESKTOP-QKECIIE;Initial Catalog=CHACO;Integrated Security=True";
            //somee
            string cadena = "Data Source=TestinPablo.mssql.somee.com;Initial Catalog=TestinPablo;User ID=pablozabala_SQLLogin_1;Password=x88q8qvrbn";
            //*****ISAUI**********
            // string cadena = "Data Source=DESKTOP-QKECIIE;Initial Catalog=ISAUI;Integrated Security=True";
            //CHACO
           //  string cadena = "Data Source=DESKTOP-4I4D3O9\\SQLEXPRESS;Initial Catalog=CHACO;Integrated Security=True";
            //  string cadena = "Data Source=DESKTOP-QKECIIE;Initial Catalog=COPIACONCESIONARIA;Integrated Security=True";
            //     string cadena = "Data Source=DESKTOP-QKECIIE;Initial Catalog=CONCESIONARIA;Integrated Security=True";
            // string cadena = "Data Source=DESKTOP-QKECIIE;Initial Catalog=COPIACONCESIONARIA;Integrated Security=True";
            // string cadena = "Data Source=ALLINONE;Initial Catalog=AUTOMOTORES;Integrated Security=True";
            //  string cadena = "Data Source=ALLINONE;Initial Catalog=AUTOMOTORES;User ID=sa;Password=123";
            //jjj
            return cadena;
        }
    }
}
