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
    public partial class FormSelectProducto : Form
    {
        public FormSelectProducto()
        {
            InitializeComponent();
            llenarProductos();
            this.dgProductos.Columns[3].Visible = false;
            this.dgProductos.Columns[4].Visible = false;
            this.dgProductos.Columns[5].Visible = false;
        }

        private void FormSelectProducto_Load(object sender, EventArgs e)
        {

        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            this.Close();

        }

        private void dgProductos_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            Program.idProducto = Int32.Parse(dgProductos.CurrentRow.Cells[0].Value.ToString());
            Program.nombreDelProducto = dgProductos.CurrentRow.Cells[1].Value.ToString();
            Program.precioUnitario = Int32.Parse(dgProductos.CurrentRow.Cells[2].Value.ToString());
        }

        public void llenarProductos()
        {
            dllconnectionDatabase connection = new dllconnectionDatabase(Program.stringpad);
            connection.OpenConnection();
            dgProductos.DataSource = connection.llenarDataGridView("select * from productos");
            connection.CloseConnection();
        }

        private void btnAceptar_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dgProductos_CellMouseClick_1(object sender, DataGridViewCellMouseEventArgs e)
        {
            Program.idProducto = Int32.Parse(dgProductos.CurrentRow.Cells[0].Value.ToString());
            Program.nombreDelProducto = dgProductos.CurrentRow.Cells[1].Value.ToString();
            Program.precioUnitario = Int32.Parse(dgProductos.CurrentRow.Cells[2].Value.ToString());

        }
    }
}
