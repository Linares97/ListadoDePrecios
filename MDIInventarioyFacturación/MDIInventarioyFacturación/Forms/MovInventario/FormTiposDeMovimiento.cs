using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MDIInventarioyFacturación.Forms.MovInventario
{
    public partial class FormTiposDeMovimiento : Form
    {
        public FormTiposDeMovimiento()
        {
            InitializeComponent();
            llenarDataGridTipoMov();
            //this.dgTiposDeMovimiento.Columns[0].Visible = false;
            this.dgTiposDeMovimiento.Columns[0].HeaderText = "No Concepto";
            this.dgTiposDeMovimiento.Columns[2].Visible = false;
        }

        private void FormTiposDeMovimiento_Load(object sender, EventArgs e)
        {

        }

        public void llenarDataGridTipoMov()
        {

            dllconnectionDatabase connection = new dllconnectionDatabase(Program.stringpad);
            connection.OpenConnection();
            dgTiposDeMovimiento.DataSource = connection.llenarDataGridView("select * from TipoMovimientoIventario");
            connection.CloseConnection();
        }

        private void dgTiposDeMovimiento_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            // save the data into the variables 

            Program.idTipoDeMovimiento = Int32.Parse(dgTiposDeMovimiento.CurrentRow.Cells[0].Value.ToString());
            Program.nombreDelMovimienot = dgTiposDeMovimiento.CurrentRow.Cells[1].Value.ToString();
            Program.IngreOEgreMov = Int32.Parse(dgTiposDeMovimiento.CurrentRow.Cells[2].Value.ToString());

        }

        public void MostrarDatos()
        {
            label1.Text = Program.idTipoDeMovimiento.ToString() + " " + Program.nombreDelMovimienot;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MostrarDatos();
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            // we close the form
            this.Close();
        }

        private void btnAceptar_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dgTiposDeMovimiento_CellMouseClick_1(object sender, DataGridViewCellMouseEventArgs e)
        {
            // save the data into the variables 

            Program.idTipoDeMovimiento = Int32.Parse(dgTiposDeMovimiento.CurrentRow.Cells[0].Value.ToString());
            Program.nombreDelMovimienot = dgTiposDeMovimiento.CurrentRow.Cells[1].Value.ToString();
            Program.IngreOEgreMov = Int32.Parse(dgTiposDeMovimiento.CurrentRow.Cells[2].Value.ToString());

        }
    }
}
