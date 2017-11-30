using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MovimientoDeInventario
{
    public partial class MuestraInventario : Form
    {
        public MuestraInventario()
        {
            InitializeComponent();



            dllconnectionDatabase.dllconnectionDatabase connection = new dllconnectionDatabase.dllconnectionDatabase(Program.stringpad);
            connection.OpenConnection();
            dgBodegas.DataSource = connection.llenarDataGridView("select idBodega,nombre as 'Nombre Bodega' from bodega");
            connection.CloseConnection();


            this.dgBodegas.Columns[0].Visible = false;

        }

        private void MuestraInventario_Load(object sender, EventArgs e)
        {

        }

        private void dgBodegas_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            // we got the id
            textBox1.Text = dgBodegas.CurrentRow.Cells[0].Value.ToString();

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

            dllconnectionDatabase.dllconnectionDatabase connection = new dllconnectionDatabase.dllconnectionDatabase(Program.stringpad);
            connection.OpenConnection();
            String reporte = @"select bodega.nombre as 'Nombre Bodega',productos.descripcion as 'Nombre Producto',cantidad from detallebodega
inner join bodega
on bodega.idBodega = detallebodega.bodega_idBodega
inner join productos
on productos.idProducto=productos_idProducto
where idbodega = "+textBox1.Text;

            dgInventario.DataSource = connection.llenarDataGridView(reporte);
            connection.CloseConnection();


        }

        private void button1_Click(object sender, EventArgs e)
        {
            dllconnectionDatabase.dllconnectionDatabase connection = new dllconnectionDatabase.dllconnectionDatabase(Program.stringpad);
            connection.OpenConnection();
            String reporte = @"select bodega.nombre as 'Nombre Bodega',productos.descripcion as 'Nombre Producto',cantidad from detallebodega
inner join bodega
on bodega.idBodega = detallebodega.bodega_idBodega
inner join productos
on productos.idProducto=productos_idProducto";

            dgInventario.DataSource = connection.llenarDataGridView(reporte);
            connection.CloseConnection();

        }
    }
}
