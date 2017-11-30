using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Navegador.Utilidades;

namespace Navegador
{
    public partial class Navegador : UserControl
    {
        [Description("Direccion servidor")]
        [Category("ParametrosBD")]
        public String servidor{ get; set; }
        [Description("BaseDatos")]
        [Category("ParametrosBD")]
        public String nombreBD { get; set; }
        [Description("NombreTabla")]
        [Category("ParametrosBD")]
        public String nombreTabla { get; set; }
        [Description("Usuario")]
        [Category("ParametrosBD")]
        public String usuario { get; set; }
        [Description("Contraseña")]
        [Category("ParametrosBD")]
        public String pass { get; set; }
        private Conector con;
        public int iPosicion = 0,iFilastotal;

        public Navegador()
        {
            InitializeComponent();
            btn_actualizar.Enabled = false;
            btn_eliminar.Enabled = false;

            btn_guardar.Enabled = false;
            btn_adelante.Enabled = false;
            btn_primero.Enabled = false;
            btn_atras.Enabled = false;
            btn_ultimo.Enabled = false;
            btn_imprimir.Enabled = false;
            btn_modificar.Enabled = false;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            btn_actualizar.Enabled = true;
            btn_eliminar.Enabled = true;
            btn_modificar.Enabled = true;
            btn_guardar.Enabled = true;
            
        }

        private void panel1_MouseClick(object sender, MouseEventArgs e)
        {
            if (this.InsertReceive != null)
                this.InsertReceive(this, e);

        }

        private void Navegador_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click_1(object sender, EventArgs e)
        {

        }

        public event EventHandler InsertReceive;
        public event EventHandler UpdateReceive;
        public event EventHandler DeleteReceive;

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (this.UpdateReceive != null)
                this.UpdateReceive(this, e);
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (this.DeleteReceive != null)
                this.DeleteReceive(this, e);
        }

        private void button8_Click(object sender, EventArgs e)
        {
            if (iPosicion == 0)
            {
                iPosicion = 0;
            }
            else if (iPosicion > 0)
            {
                iPosicion--;
            }
            getDatoManipulable(iPosicion);
        }

        private void button10_Click(object sender, EventArgs e)
        {
            iPosicion = 0;
            getDatoManipulable(iPosicion);
        }

        public string getDatoManipulable(int posicion) {
            String resultado = "";
            con = new Conector(servidor,nombreBD,usuario,pass);
            con.OpenConnection();
            DataTable res = con.informacion("Select * FROM users");
            DataSet data = new DataSet("NAV");
            data.Tables.Add(res);
            resultado = data.Tables[0].Rows[iPosicion][1].ToString();
            MessageBox.Show("Dato : " + resultado);
            return resultado;
        }

        private void button11_Click(object sender, EventArgs e)
        {
            iPosicion++;
            getDatoManipulable(iPosicion);
        }

        private void button1_MouseEnter(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            if (this.InsertReceive != null)
                this.InsertReceive(this, e);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            btn_adelante.Enabled = true;
            btn_primero.Enabled = true;
            btn_atras.Enabled = true;
            btn_ultimo.Enabled = true;
            btn_imprimir.Enabled = true;
            btn_modificar.Enabled = true;
        }

        private void btn_primero_Click(object sender, EventArgs e)
        {
            iPosicion = iFilastotal - 1;
            getDatoManipulable(iPosicion);
        }

        private void btn_actualizar_Click(object sender, EventArgs e)
        {

        }
    }
}
