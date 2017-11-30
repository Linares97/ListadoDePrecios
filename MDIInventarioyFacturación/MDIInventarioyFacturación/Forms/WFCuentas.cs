using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Collections;

namespace MDIInventarioyFacturación
{
    public partial class WFCuentas : Form
    {
        public WFCuentas()
        {
            InitializeComponent();
        }

        private void WFCuentas_Load(object sender, EventArgs e)
        {
            MyDBEntity mdb = new MyDBEntity();
            string sql = "SELECT nomenclatura, nombre FROM hotelfase2.cuentacontabilidad;";
            DataTable tbl = new DataTable();

            try
            {

                tbl = mdb.CargarTabla(sql);
                //ctacodigo.ValueMember = "nombre";
                //ctacodigo.DisplayMember = "idcuenta";
                //ctacodigo.DataSource = tbl;
                //txtcuenta.Text = ctacodigo.Text;


                //llama al método de la clase para conectar
                MyDBEntity mienty = new MyDBEntity();
                mienty.conectar();

                MySqlCommand cmd = new MySqlCommand(sql, mienty.conexion);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dgvcuentas.DataSource = dt;


            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
            }
        }

        private void dgvcuentas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dgvcuentas_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            Program.idcuentas = Int32.Parse(dgvcuentas.CurrentRow.Cells[0].Value.ToString());
            Program.nombrecuenta = dgvcuentas.CurrentRow.Cells[1].Value.ToString();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dgvcuentas_CellMouseClick_1(object sender, DataGridViewCellMouseEventArgs e)
        {
            Program.idcuentas = Int32.Parse(dgvcuentas.CurrentRow.Cells[0].Value.ToString());
            Program.nombrecuenta = dgvcuentas.CurrentRow.Cells[1].Value.ToString();
        }
    }
}
