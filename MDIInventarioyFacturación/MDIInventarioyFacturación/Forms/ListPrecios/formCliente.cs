using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MDIInventarioyFacturación.Forms.ListPrecios
{
    public partial class formCliente : Form
    {
        public formCliente()
        {
            InitializeComponent();
        }

        private void formCliente_Load(object sender, EventArgs e)
        {
            dllconnectionDatabase.dllconnectionDatabase conn = new dllconnectionDatabase.dllconnectionDatabase("server=localhost; user id=root;database=hotelfase2");
            conn.OpenConnection();
            dataGridView1.DataSource = conn.llenarDataGridView("select * from cliente");
            conn.CloseConnection();
        }

        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            Program.idCliente = Int32.Parse(dataGridView1.CurrentRow.Cells[0].Value.ToString());
            Program.nombreCliente = dataGridView1.CurrentRow.Cells[2].Value.ToString();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
