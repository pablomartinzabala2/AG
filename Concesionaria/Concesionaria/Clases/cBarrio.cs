using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Windows.Forms;
using Microsoft.ApplicationBlocks.Data;

namespace Concesionaria.Clases
{
    public class cBarrio
    {
        public DataTable Getbarrios()
        {
            string sql = "select * from barrio order by nombre";
            return cDb.ExecuteDataTable(sql);
        }

        public void ActualizarCiudad(Int32 CodBarrio,Int32 CodCiudad)
        {
            string sql = " update Barrio ";
            sql = sql + " set CodCiudad =" + CodCiudad.ToString();
            sql = sql + " where CodBarrio=" + CodBarrio.ToString();
            cDb.ExecutarNonQuery(sql);
        }

        public DataTable GetBarrioxCiudad(Int32 CodCiudad)
        {
            string sql = "select * from Barrio";
            sql = sql + " where CodCiudad =" + CodCiudad.ToString();
            return cDb.ExecuteDataTable(sql);
        }

        public DataTable GetBarrioxId(Int32 CodBarrio)
        {
            string sql = "select * from Barrio ";
            sql = sql + " where CodBarrio=" + CodBarrio.ToString();
            return cDb.ExecuteDataTable(sql);
        }
    }
}
