﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
namespace Concesionaria.Clases
{
    public class cPapeles
    {
        public DataTable GetPapeles()
        {
            string sql = "select * from papeles";
            return cDb.ExecuteDataTable(sql);
        } 

        public void  InsertarPapeles(SqlConnection con, SqlTransaction Transaccion,Int32 CodPapel,Int32 CodStock,
            string Entrego,string Texto,DateTime? Fecha,DateTime? FechaVencimiento,Int32 CodCompra)
        {
            string sql = "insert into PapelesxStock";
            sql = sql + "(CodPapel, CodStock,Entrego";
            sql = sql + ", Texto,  Fecha, FechaVencimiento,CodCompra";
            sql = sql + ")";
            sql = sql + " values(";
            sql = sql + CodPapel.ToString();
            sql = sql + "," + CodStock.ToString();
            sql = sql + "," + "'" + Entrego + "'";
            sql = sql + "," + "'" + Texto + "'";
            if (Fecha !=null)
            {
                DateTime Fec = Convert.ToDateTime(Fecha);
                sql = sql + "," + "'" + Fec.ToShortDateString() + "'";
            }
            else
            {
                sql = sql + ",null";
            }

            if (FechaVencimiento != null)
            {
                DateTime Fec = Convert.ToDateTime(FechaVencimiento);
                sql = sql + "," + "'" + Fec.ToShortDateString() + "'";
            }
            else
            {
                sql = sql + ",null";
            }
            sql = sql + "," + CodCompra.ToString();
            sql = sql + ")";
            cDb.EjecutarNonQueryTransaccion (con, Transaccion, sql);
        }
    }
}
