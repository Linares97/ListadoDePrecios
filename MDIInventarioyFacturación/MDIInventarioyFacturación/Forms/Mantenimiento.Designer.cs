namespace MDIInventarioyFacturación
{
    partial class Mantenimiento
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.trcodigo = new System.Windows.Forms.TextBox();
            this.trnombre = new System.Windows.Forms.TextBox();
            this.txtidcuenta = new System.Windows.Forms.TextBox();
            this.txtnombrecuenta = new System.Windows.Forms.TextBox();
            this.Guardar = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.dtptran = new System.Windows.Forms.DateTimePicker();
            this.efactivo = new System.Windows.Forms.RadioButton();
            this.efpasivo = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.espasivo = new System.Windows.Forms.RadioButton();
            this.label9 = new System.Windows.Forms.Label();
            this.esactivo = new System.Windows.Forms.RadioButton();
            this.dgvtransacciones = new System.Windows.Forms.DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            this.navegador1 = new Navegador.Navegador();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvtransacciones)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(360, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mantenimiento de Transacciones";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(45, 79);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "TR Código: ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(45, 113);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "TR Nombre:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(2, 18);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "TR Efecto:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(45, 263);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(40, 13);
            this.label6.TabIndex = 5;
            this.label6.Text = "Fecha:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(45, 302);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(70, 13);
            this.label7.TabIndex = 6;
            this.label7.Text = "Código CTA: ";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(384, 79);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(80, 13);
            this.label8.TabIndex = 7;
            this.label8.Text = "Transacciones:";
            // 
            // trcodigo
            // 
            this.trcodigo.Location = new System.Drawing.Point(138, 76);
            this.trcodigo.Name = "trcodigo";
            this.trcodigo.Size = new System.Drawing.Size(100, 20);
            this.trcodigo.TabIndex = 8;
            // 
            // trnombre
            // 
            this.trnombre.Location = new System.Drawing.Point(138, 110);
            this.trnombre.Name = "trnombre";
            this.trnombre.Size = new System.Drawing.Size(100, 20);
            this.trnombre.TabIndex = 9;
            // 
            // txtidcuenta
            // 
            this.txtidcuenta.Enabled = false;
            this.txtidcuenta.Location = new System.Drawing.Point(138, 299);
            this.txtidcuenta.Name = "txtidcuenta";
            this.txtidcuenta.Size = new System.Drawing.Size(100, 20);
            this.txtidcuenta.TabIndex = 10;
            this.txtidcuenta.TextChanged += new System.EventHandler(this.txtidcuenta_TextChanged);
            // 
            // txtnombrecuenta
            // 
            this.txtnombrecuenta.Enabled = false;
            this.txtnombrecuenta.Location = new System.Drawing.Point(138, 325);
            this.txtnombrecuenta.Name = "txtnombrecuenta";
            this.txtnombrecuenta.Size = new System.Drawing.Size(100, 20);
            this.txtnombrecuenta.TabIndex = 11;
            // 
            // Guardar
            // 
            this.Guardar.Location = new System.Drawing.Point(48, 373);
            this.Guardar.Name = "Guardar";
            this.Guardar.Size = new System.Drawing.Size(75, 23);
            this.Guardar.TabIndex = 12;
            this.Guardar.Text = "Guardar";
            this.Guardar.UseVisualStyleBackColor = true;
            this.Guardar.Click += new System.EventHandler(this.Guardar_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(256, 299);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(51, 23);
            this.button2.TabIndex = 13;
            this.button2.Text = "Elegir";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // dtptran
            // 
            this.dtptran.Location = new System.Drawing.Point(138, 257);
            this.dtptran.Name = "dtptran";
            this.dtptran.Size = new System.Drawing.Size(200, 20);
            this.dtptran.TabIndex = 14;
            // 
            // efactivo
            // 
            this.efactivo.AutoSize = true;
            this.efactivo.Location = new System.Drawing.Point(95, 16);
            this.efactivo.Name = "efactivo";
            this.efactivo.Size = new System.Drawing.Size(51, 17);
            this.efactivo.TabIndex = 15;
            this.efactivo.TabStop = true;
            this.efactivo.Text = "Debe";
            this.efactivo.UseVisualStyleBackColor = true;
            this.efactivo.CheckedChanged += new System.EventHandler(this.efactivo_CheckedChanged);
            // 
            // efpasivo
            // 
            this.efpasivo.AutoSize = true;
            this.efpasivo.Location = new System.Drawing.Point(186, 16);
            this.efpasivo.Name = "efpasivo";
            this.efpasivo.Size = new System.Drawing.Size(54, 17);
            this.efpasivo.TabIndex = 16;
            this.efpasivo.TabStop = true;
            this.efpasivo.Text = "Haber";
            this.efpasivo.UseVisualStyleBackColor = true;
            this.efpasivo.CheckedChanged += new System.EventHandler(this.efpasivo_CheckedChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.efpasivo);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.efactivo);
            this.groupBox1.Location = new System.Drawing.Point(48, 148);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(277, 45);
            this.groupBox1.TabIndex = 19;
            this.groupBox1.TabStop = false;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.espasivo);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.esactivo);
            this.groupBox2.Location = new System.Drawing.Point(48, 203);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(277, 45);
            this.groupBox2.TabIndex = 20;
            this.groupBox2.TabStop = false;
            // 
            // espasivo
            // 
            this.espasivo.AutoSize = true;
            this.espasivo.Location = new System.Drawing.Point(186, 16);
            this.espasivo.Name = "espasivo";
            this.espasivo.Size = new System.Drawing.Size(57, 17);
            this.espasivo.TabIndex = 16;
            this.espasivo.TabStop = true;
            this.espasivo.Text = "Pasivo";
            this.espasivo.UseVisualStyleBackColor = true;
            this.espasivo.CheckedChanged += new System.EventHandler(this.espasivo_CheckedChanged);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(2, 18);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(63, 13);
            this.label9.TabIndex = 3;
            this.label9.Text = "TR Estatus:";
            // 
            // esactivo
            // 
            this.esactivo.AutoSize = true;
            this.esactivo.Location = new System.Drawing.Point(95, 16);
            this.esactivo.Name = "esactivo";
            this.esactivo.Size = new System.Drawing.Size(55, 17);
            this.esactivo.TabIndex = 15;
            this.esactivo.TabStop = true;
            this.esactivo.Text = "Activo";
            this.esactivo.UseVisualStyleBackColor = true;
            this.esactivo.CheckedChanged += new System.EventHandler(this.esactivo_CheckedChanged);
            // 
            // dgvtransacciones
            // 
            this.dgvtransacciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvtransacciones.Location = new System.Drawing.Point(387, 98);
            this.dgvtransacciones.Name = "dgvtransacciones";
            this.dgvtransacciones.Size = new System.Drawing.Size(629, 217);
            this.dgvtransacciones.TabIndex = 21;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(941, 389);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 22;
            this.button1.Text = "Póliza";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(396, 12);
            this.navegador1.Name = "navegador1";
            this.navegador1.nombreBD = null;
            this.navegador1.nombreTabla = null;
            this.navegador1.pass = null;
            this.navegador1.servidor = null;
            this.navegador1.Size = new System.Drawing.Size(559, 47);
            this.navegador1.TabIndex = 23;
            this.navegador1.usuario = null;
            // 
            // Mantenimiento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1028, 421);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.dgvtransacciones);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dtptran);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.Guardar);
            this.Controls.Add(this.txtnombrecuenta);
            this.Controls.Add(this.txtidcuenta);
            this.Controls.Add(this.trnombre);
            this.Controls.Add(this.trcodigo);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Mantenimiento";
            this.Text = "Mantenimiento";
            this.Load += new System.EventHandler(this.Mantenimiento_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvtransacciones)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox trcodigo;
        private System.Windows.Forms.TextBox trnombre;
        private System.Windows.Forms.TextBox txtidcuenta;
        private System.Windows.Forms.TextBox txtnombrecuenta;
        private System.Windows.Forms.Button Guardar;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.DateTimePicker dtptran;
        private System.Windows.Forms.RadioButton efactivo;
        private System.Windows.Forms.RadioButton efpasivo;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.RadioButton espasivo;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.RadioButton esactivo;
        private System.Windows.Forms.DataGridView dgvtransacciones;
        private System.Windows.Forms.Button button1;
        private Navegador.Navegador navegador1;
    }
}