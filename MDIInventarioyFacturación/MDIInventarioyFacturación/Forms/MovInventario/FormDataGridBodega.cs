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
    public partial class FormDataGridBodega : Form
    {
        public FormDataGridBodega()
        {
            InitializeComponent();
            llenardatabodegas();
        }

        private void FormDataGridBodega_Load(object sender, EventArgs e)
        {

        }

        public void llenardatabodegas()
        {
            dllconnectionDatabase connection = new dllconnectionDatabase(Program.stringpad);
            connection.OpenConnection();
            dgBodegas.DataSource = connection.llenarDataGridView("select * from bodega");
            connection.CloseConnection();
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dgBodegas_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {

            // save the data
            Program.idBodega = Int32.Parse(dgBodegas.CurrentRow.Cells[0].Value.ToString());
            Program.nombreDeLaBodega = dgBodegas.CurrentRow.Cells[1].Value.ToString();

        }

        private void btnAceptar_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dgBodegas_CellMouseClick_1(object sender, DataGridViewCellMouseEventArgs e)
        {

            // save the data
            Program.idBodega = Int32.Parse(dgBodegas.CurrentRow.Cells[0].Value.ToString());
            Program.nombreDeLaBodega = dgBodegas.CurrentRow.Cells[1].Value.ToString();

        }
    }
}
