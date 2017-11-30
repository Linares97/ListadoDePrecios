using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using dllconnectionDatabase;

namespace MDIInventarioyFacturación.Forms.ListPrecios
{
    public partial class ListadoPrecio : Form
    {
        public ListadoPrecio()
        {
            InitializeComponent();
        }

        private void ListadoPrecio_Load(object sender, EventArgs e)
        {

        }
        public void llenarDataGrid()
        {

            dllconnectionDatabase.dllconnectionDatabase conn = new dllconnectionDatabase.dllconnectionDatabase("server=localhost; user id=root;database=hotelfase2");
            conn.OpenConnection();
            dataGridView1.DataSource = conn.llenarDataGridView("select pr.idproducto, pr.descripcion,pr.precio as 'Precio Normal', pc.descripcion as 'Nombre Lista',(pr.precio - (pr.precio * pc.dato)) as 'Precio Descuento' from productos pr, listadoPrecios pc  where pc.idPorcentaje = '" + textBox1.Text + "';");
            conn.CloseConnection();

        }
        public void llenarDataGridLista()
        {

            dllconnectionDatabase.dllconnectionDatabase conn = new dllconnectionDatabase.dllconnectionDatabase("server=localhost; user id=root;database=hotelfase2");
            conn.OpenConnection();
            dataGridView1.DataSource = conn.llenarDataGridView("select pr.idproducto, pr.descripcion, pr.precio as 'Precio Normal', lp.descripcion as 'Nombre Lista',(pr.precio - (pr.precio * lp.dato)) as 'Precio Descuento' from productos pr, listadoPrecios lp where lp.idPorcentaje = '" + textBox3.Text + "';");
            conn.CloseConnection();

        }


        private void label4_Click(object sender, EventArgs e)
        {

        }


        private void button2_Click_1(object sender, EventArgs e)
        {
            formListas mostrar = new formListas();
            mostrar.ShowDialog();

            textBox3.Text = Program.idPorcentaje.ToString();
            textBox4.Text = Program.Descripcion;


            llenarDataGridLista();
            textBox1.Text = "";
            textBox2.Text = "";
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            formCliente mostrar = new formCliente();
            mostrar.ShowDialog();

            textBox1.Text = Program.idCliente.ToString();
            textBox2.Text = Program.nombreCliente;


            llenarDataGrid();
            textBox3.Text = "";
            textBox4.Text = "";
        }
    }
}
