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
    public partial class actualizarPorcentajes : Form
    {
        public actualizarPorcentajes()
        {
            InitializeComponent();
        }

        private void actualizarPorcentajes_Load(object sender, EventArgs e)
        {

        }
        private void label2_Click(object sender, EventArgs e)
        {

        }


        public void llenarDataGrid()
        {

            dllconnectionDatabase.dllconnectionDatabase conn = new dllconnectionDatabase.dllconnectionDatabase("server=localhost; user id=root;database=hotelfase2");
            conn.OpenConnection();
            dataGridView1.DataSource = conn.llenarDataGridView("select * from listadoPrecios");
            conn.CloseConnection();

        }


        private void button2_Click(object sender, EventArgs e)
        {
           
        }

        private void precioToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }


        private void lbl_minorista_Click(object sender, EventArgs e)
        {

        }

        private void Txtx_min_TextChanged(object sender, EventArgs e)
        {

        }

        private void Txtx_may_TextChanged(object sender, EventArgs e)
        {

        }

        private void lbl_mayorista_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            String stringpad = "server=localhost;user id=root;database=hotelfase2";
            dllconnectionDatabase.dllconnectionDatabase connection = new dllconnectionDatabase.dllconnectionDatabase(stringpad);

            connection.OpenConnection();
            connection.UpdateMinorista("insert into listadoPrecios (descripcion, dato) values ('" + Txtx_Desc.Text + "','" + Txtx_Porc.Text + "' ); ");
            connection.CloseConnection();
            Txtx_Desc.Text = "";
            Txtx_Porc.Text = "";
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            llenarDataGrid();
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            String stringpad = "server=localhost;user id=root;database=hotelfase2";
            dllconnectionDatabase.dllconnectionDatabase connection = new dllconnectionDatabase.dllconnectionDatabase(stringpad);
            if (connection.OpenConnection())
            {
                /*We open the connection*/
                MessageBox.Show("Conexión Exitosa!");
            }
            else
            {
                /*We have an error*/
                MessageBox.Show("Error");
            }

        }
    }
}
