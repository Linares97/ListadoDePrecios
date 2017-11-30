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
    public partial class Mantenimiento : Form
    {
        public Mantenimiento()
        {
            InitializeComponent();
            llenarDataGridPrincipal();
        }

        //variables de radiobutton
        public string trefecto;
        public string trestatus;

        private void Mantenimiento_Load(object sender, EventArgs e)
        {

        }

        private void Guardar_Click(object sender, EventArgs e)
        {
            //objetos del tipo de la clase referencia
            MyDBEntity mdb = new MyDBEntity();
            //variable para almacenar la consulta sql
            string sql = "INSERT INTO transaccionesinventario VALUES('" + trcodigo.Text + "','" + trnombre.Text + "','" + trefecto + "','" + txtidcuenta.Text + "','" + trestatus + "','" + dtptran.Value.ToString("yyyy-MM-dd") + "');";

            try
            {
                //se manda como parametro el string con la consulta 
                mdb.EjecutarSQL(sql);
                MessageBox.Show("DATOS ALMACENADOS EN LA BASE DE DATOS");

            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
            }

            llenarDataGridPrincipal();

           // Ajuste form = new Ajuste();
           // form.ShowDialog();
        }

        private void efactivo_CheckedChanged(object sender, EventArgs e)
        {
            trefecto = "Debe";
        }

        private void efpasivo_CheckedChanged(object sender, EventArgs e)
        {
            trefecto = "Haber";
        }

        private void esactivo_CheckedChanged(object sender, EventArgs e)
        {
            trestatus = "Activo";
        }

        private void espasivo_CheckedChanged(object sender, EventArgs e)
        {
            trestatus = "Pasivo";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            WFCuentas form = new WFCuentas();
            form.ShowDialog();
            txtidcuenta.Text = Program.idcuentas.ToString();
            txtnombrecuenta.Text = Program.nombrecuenta;
        }

        public void llenarDataGridPrincipal()
        {
            MyDBEntity mdb = new MyDBEntity();
            string sql = "select *from transaccionesinventario;";
            DataTable tbl = new DataTable();

            try
            {

                tbl = mdb.CargarTabla(sql);

                //llama al método de la clase para conectar
                //MyDBEntity mienty = new MyDBEntity();
                mdb.conectar();

                MySqlCommand cmd = new MySqlCommand(sql, mdb.conexion);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                dgvtransacciones.DataSource = dt;


            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
            }


        }

        private void txtidcuenta_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Poliza pform = new Poliza();
            pform.ShowDialog();
        }
    }
}
