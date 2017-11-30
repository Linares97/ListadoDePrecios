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
    public partial class formListas : Form
    {
        public formListas()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            Program.idPorcentaje = Int32.Parse(dataGridView1.CurrentRow.Cells[0].Value.ToString());
            Program.Descripcion = dataGridView1.CurrentRow.Cells[1].Value.ToString();
        }

        private void formListas_Load(object sender, EventArgs e)
        {
            dllconnectionDatabase.dllconnectionDatabase conn = new dllconnectionDatabase.dllconnectionDatabase("server=localhost; user id=root;database=hotelfase2");
            conn.OpenConnection();
            dataGridView1.DataSource = conn.llenarDataGridView("select * from listadoPrecios");
            conn.CloseConnection();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
