using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MDIInventarioyFacturación.Forms.MovInventario;
using MDIInventarioyFacturación.Forms.ListPrecios;
using capaDatos;
using capaDiseño;


namespace MDIInventarioyFacturación
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void enlaceConContabilidadToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Mantenimiento form = new Mantenimiento();
            form.MdiParent = this;
            form.Show();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void entradasYSalidaInventarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            NuevoMovimiento formMov = new NuevoMovimiento();
            formMov.MdiParent = this;
            formMov.Show();
        }

        private void comisionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            comisiones menu = new comisiones();
            menu.Show();
        }

        private void listadoDePreciosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
            ListadoPrecio listas = new ListadoPrecio();
            listas.MdiParent = this;
            listas.Show();
        }

        private void actualizarListasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            actualizarPorcentajes porcentaje = new actualizarPorcentajes();
            porcentaje.MdiParent = this;
            porcentaje.Show();
        }
    }
}
