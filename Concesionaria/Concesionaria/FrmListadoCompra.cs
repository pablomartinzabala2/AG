using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Concesionaria.Clases;
namespace Concesionaria
{
    public partial class FrmListadoCompra : Form
    {
        public FrmListadoCompra()
        {
            InitializeComponent();
        }

        private void FrmListadoCompra_Load(object sender, EventArgs e)
        {
            DateTime Fecha = DateTime.Now;
            txtFechaHasta.Text = Fecha.ToShortDateString();
            Fecha = Fecha.AddMonths(-1);
            txtFechaDesde.Text  = Fecha.ToShortDateString();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            cFunciones fun = new cFunciones();
            if (fun.ValidarFecha (txtFechaDesde.Text)==false)
            {
                Mensaje("La fecha desde es incorrecta");
                return;
            }
             
            if (fun.ValidarFecha(txtFechaHasta.Text) == false)
            {
                Mensaje("La fecha Hasta es incorrecta");
                return;
            }
            DateTime FechaDesde = Convert.ToDateTime(txtFechaDesde.Text);
            DateTime FechaHasta = Convert.ToDateTime(txtFechaHasta.Text);
            cCompra compra = new cCompra();
            DataTable trdo = compra.getComprasxFecha(FechaDesde, FechaHasta);
            Grilla.DataSource = trdo;
        }

        private void Mensaje(string msj)
        {
            MessageBox.Show(msj, "Sistema");
        }
    }
}
