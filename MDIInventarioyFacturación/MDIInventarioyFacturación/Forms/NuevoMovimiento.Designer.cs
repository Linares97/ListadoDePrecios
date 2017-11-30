namespace MovimientoDeInventario
{
    partial class NuevoMovimiento
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(NuevoMovimiento));
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.cantidad = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.idProducto = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.selectProducto = new System.Windows.Forms.DataGridViewButtonColumn();
            this.costoUnitario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.total = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtEntradaOSalida = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btnSelectTipo = new System.Windows.Forms.Button();
            this.txtIdTipoMovimiento = new System.Windows.Forms.TextBox();
            this.txtDescripcionTipoMovimiento = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtNombreBodega = new System.Windows.Forms.TextBox();
            this.txtConsultaBodega = new System.Windows.Forms.Button();
            this.txtIdBodega = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dtMovimiento = new System.Windows.Forms.DateTimePicker();
            this.txtFechaMovimiento = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.dgVerificaExistenciasBode = new System.Windows.Forms.DataGridView();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtCodigoAplicacion = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button12 = new System.Windows.Forms.Button();
            this.btn_adelante = new System.Windows.Forms.Button();
            this.btn_ultimo = new System.Windows.Forms.Button();
            this.btn_primero = new System.Windows.Forms.Button();
            this.btn_atras = new System.Windows.Forms.Button();
            this.btn_imprimir = new System.Windows.Forms.Button();
            this.btn_guardar = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.btn_actualizar = new System.Windows.Forms.Button();
            this.btn_eliminar = new System.Windows.Forms.Button();
            this.btn_modificar = new System.Windows.Forms.Button();
            this.btn_insertar = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgVerificaExistenciasBode)).BeginInit();
            this.panel2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.cantidad,
            this.idProducto,
            this.selectProducto,
            this.costoUnitario,
            this.total});
            this.dataGridView1.Location = new System.Drawing.Point(18, 361);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(663, 140);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // cantidad
            // 
            this.cantidad.FillWeight = 200F;
            this.cantidad.HeaderText = "Cantidad";
            this.cantidad.Name = "cantidad";
            // 
            // idProducto
            // 
            this.idProducto.HeaderText = "Codigo Producto";
            this.idProducto.Name = "idProducto";
            // 
            // selectProducto
            // 
            this.selectProducto.HeaderText = "Seleccionar Producto";
            this.selectProducto.Name = "selectProducto";
            // 
            // costoUnitario
            // 
            this.costoUnitario.HeaderText = "Costo Unitario";
            this.costoUnitario.Name = "costoUnitario";
            // 
            // total
            // 
            this.total.HeaderText = "Total";
            this.total.Name = "total";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtEntradaOSalida);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.btnSelectTipo);
            this.groupBox1.Controls.Add(this.txtIdTipoMovimiento);
            this.groupBox1.Controls.Add(this.txtDescripcionTipoMovimiento);
            this.groupBox1.Location = new System.Drawing.Point(20, 130);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(281, 81);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Concepto";
            // 
            // txtEntradaOSalida
            // 
            this.txtEntradaOSalida.Location = new System.Drawing.Point(126, 81);
            this.txtEntradaOSalida.Name = "txtEntradaOSalida";
            this.txtEntradaOSalida.Size = new System.Drawing.Size(100, 20);
            this.txtEntradaOSalida.TabIndex = 4;
            this.txtEntradaOSalida.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 34);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(102, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Tipo De Movimiento";
            // 
            // btnSelectTipo
            // 
            this.btnSelectTipo.Location = new System.Drawing.Point(232, 29);
            this.btnSelectTipo.Name = "btnSelectTipo";
            this.btnSelectTipo.Size = new System.Drawing.Size(26, 22);
            this.btnSelectTipo.TabIndex = 2;
            this.btnSelectTipo.Text = "?";
            this.btnSelectTipo.UseVisualStyleBackColor = true;
            this.btnSelectTipo.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtIdTipoMovimiento
            // 
            this.txtIdTipoMovimiento.Location = new System.Drawing.Point(126, 57);
            this.txtIdTipoMovimiento.Name = "txtIdTipoMovimiento";
            this.txtIdTipoMovimiento.Size = new System.Drawing.Size(100, 20);
            this.txtIdTipoMovimiento.TabIndex = 1;
            this.txtIdTipoMovimiento.Visible = false;
            // 
            // txtDescripcionTipoMovimiento
            // 
            this.txtDescripcionTipoMovimiento.Location = new System.Drawing.Point(126, 31);
            this.txtDescripcionTipoMovimiento.Name = "txtDescripcionTipoMovimiento";
            this.txtDescripcionTipoMovimiento.Size = new System.Drawing.Size(100, 20);
            this.txtDescripcionTipoMovimiento.TabIndex = 0;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtNombreBodega);
            this.groupBox2.Controls.Add(this.txtConsultaBodega);
            this.groupBox2.Controls.Add(this.txtIdBodega);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Location = new System.Drawing.Point(324, 130);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(185, 81);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Seleccionar Bodega";
            this.groupBox2.Enter += new System.EventHandler(this.groupBox2_Enter);
            // 
            // txtNombreBodega
            // 
            this.txtNombreBodega.Location = new System.Drawing.Point(12, 36);
            this.txtNombreBodega.Name = "txtNombreBodega";
            this.txtNombreBodega.Size = new System.Drawing.Size(100, 20);
            this.txtNombreBodega.TabIndex = 4;
            // 
            // txtConsultaBodega
            // 
            this.txtConsultaBodega.Location = new System.Drawing.Point(118, 34);
            this.txtConsultaBodega.Name = "txtConsultaBodega";
            this.txtConsultaBodega.Size = new System.Drawing.Size(26, 22);
            this.txtConsultaBodega.TabIndex = 3;
            this.txtConsultaBodega.Text = "?";
            this.txtConsultaBodega.UseVisualStyleBackColor = true;
            this.txtConsultaBodega.Click += new System.EventHandler(this.txtConsultaBodega_Click);
            // 
            // txtIdBodega
            // 
            this.txtIdBodega.Location = new System.Drawing.Point(18, 96);
            this.txtIdBodega.Name = "txtIdBodega";
            this.txtIdBodega.Size = new System.Drawing.Size(100, 20);
            this.txtIdBodega.TabIndex = 1;
            this.txtIdBodega.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 17);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(44, 13);
            this.label2.TabIndex = 0;
            this.label2.Text = "Bodega";
            // 
            // dtMovimiento
            // 
            this.dtMovimiento.Location = new System.Drawing.Point(524, 243);
            this.dtMovimiento.Name = "dtMovimiento";
            this.dtMovimiento.Size = new System.Drawing.Size(23, 20);
            this.dtMovimiento.TabIndex = 24;
            this.dtMovimiento.ValueChanged += new System.EventHandler(this.dtMovimiento_ValueChanged);
            // 
            // txtFechaMovimiento
            // 
            this.txtFechaMovimiento.Location = new System.Drawing.Point(386, 243);
            this.txtFechaMovimiento.Name = "txtFechaMovimiento";
            this.txtFechaMovimiento.Size = new System.Drawing.Size(132, 20);
            this.txtFechaMovimiento.TabIndex = 23;
            this.txtFechaMovimiento.TextChanged += new System.EventHandler(this.txtFechaMovimiento_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(340, 249);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(40, 13);
            this.label3.TabIndex = 25;
            this.label3.Text = "Fecha ";
            this.label3.Click += new System.EventHandler(this.label3_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.groupBox3);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(896, 102);
            this.panel1.TabIndex = 26;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Verdana", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(365, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(256, 23);
            this.label6.TabIndex = 2;
            this.label6.Text = "Movimiento de Inventario";
            // 
            // dgVerificaExistenciasBode
            // 
            this.dgVerificaExistenciasBode.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgVerificaExistenciasBode.Location = new System.Drawing.Point(715, 478);
            this.dgVerificaExistenciasBode.Name = "dgVerificaExistenciasBode";
            this.dgVerificaExistenciasBode.Size = new System.Drawing.Size(43, 23);
            this.dgVerificaExistenciasBode.TabIndex = 27;
            this.dgVerificaExistenciasBode.Visible = false;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(20, 243);
            this.txtDescripcion.Multiline = true;
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(298, 105);
            this.txtDescripcion.TabIndex = 28;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(17, 218);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(66, 13);
            this.label4.TabIndex = 29;
            this.label4.Text = "Descripcion:";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.button12);
            this.panel2.Controls.Add(this.btn_adelante);
            this.panel2.Controls.Add(this.btn_ultimo);
            this.panel2.Controls.Add(this.btn_primero);
            this.panel2.Controls.Add(this.btn_atras);
            this.panel2.Controls.Add(this.btn_imprimir);
            this.panel2.Controls.Add(this.btn_guardar);
            this.panel2.Controls.Add(this.button5);
            this.panel2.Controls.Add(this.btn_actualizar);
            this.panel2.Controls.Add(this.btn_eliminar);
            this.panel2.Controls.Add(this.btn_modificar);
            this.panel2.Controls.Add(this.btn_insertar);
            this.panel2.Location = new System.Drawing.Point(6, 12);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(554, 46);
            this.panel2.TabIndex = 3;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.panel2);
            this.groupBox3.Location = new System.Drawing.Point(3, 35);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(565, 64);
            this.groupBox3.TabIndex = 4;
            this.groupBox3.TabStop = false;
            // 
            // txtCodigoAplicacion
            // 
            this.txtCodigoAplicacion.Enabled = false;
            this.txtCodigoAplicacion.Location = new System.Drawing.Point(858, 494);
            this.txtCodigoAplicacion.Name = "txtCodigoAplicacion";
            this.txtCodigoAplicacion.Size = new System.Drawing.Size(38, 20);
            this.txtCodigoAplicacion.TabIndex = 30;
            this.txtCodigoAplicacion.Text = "2000";
            // 
            // button1
            // 
            this.button1.Image = global::MovimientoDeInventario.Properties.Resources.save;
            this.button1.Location = new System.Drawing.Point(816, 108);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(65, 61);
            this.button1.TabIndex = 0;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Visible = false;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // button12
            // 
            this.button12.Image = ((System.Drawing.Image)(resources.GetObject("button12.Image")));
            this.button12.Location = new System.Drawing.Point(509, 3);
            this.button12.Name = "button12";
            this.button12.Size = new System.Drawing.Size(40, 40);
            this.button12.TabIndex = 14;
            this.button12.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.button12.UseVisualStyleBackColor = true;
            // 
            // btn_adelante
            // 
            this.btn_adelante.Enabled = false;
            this.btn_adelante.Image = ((System.Drawing.Image)(resources.GetObject("btn_adelante.Image")));
            this.btn_adelante.Location = new System.Drawing.Point(371, 3);
            this.btn_adelante.Name = "btn_adelante";
            this.btn_adelante.Size = new System.Drawing.Size(40, 40);
            this.btn_adelante.TabIndex = 3;
            this.btn_adelante.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_adelante.UseVisualStyleBackColor = true;
            // 
            // btn_ultimo
            // 
            this.btn_ultimo.Enabled = false;
            this.btn_ultimo.Image = ((System.Drawing.Image)(resources.GetObject("btn_ultimo.Image")));
            this.btn_ultimo.Location = new System.Drawing.Point(463, 3);
            this.btn_ultimo.Name = "btn_ultimo";
            this.btn_ultimo.Size = new System.Drawing.Size(40, 40);
            this.btn_ultimo.TabIndex = 4;
            this.btn_ultimo.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_ultimo.UseVisualStyleBackColor = true;
            // 
            // btn_primero
            // 
            this.btn_primero.Enabled = false;
            this.btn_primero.Image = ((System.Drawing.Image)(resources.GetObject("btn_primero.Image")));
            this.btn_primero.Location = new System.Drawing.Point(417, 3);
            this.btn_primero.Name = "btn_primero";
            this.btn_primero.Size = new System.Drawing.Size(40, 40);
            this.btn_primero.TabIndex = 5;
            this.btn_primero.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_primero.UseVisualStyleBackColor = true;
            // 
            // btn_atras
            // 
            this.btn_atras.Enabled = false;
            this.btn_atras.Image = ((System.Drawing.Image)(resources.GetObject("btn_atras.Image")));
            this.btn_atras.Location = new System.Drawing.Point(325, 3);
            this.btn_atras.Name = "btn_atras";
            this.btn_atras.Size = new System.Drawing.Size(40, 40);
            this.btn_atras.TabIndex = 6;
            this.btn_atras.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_atras.UseVisualStyleBackColor = true;
            // 
            // btn_imprimir
            // 
            this.btn_imprimir.Enabled = false;
            this.btn_imprimir.Image = ((System.Drawing.Image)(resources.GetObject("btn_imprimir.Image")));
            this.btn_imprimir.Location = new System.Drawing.Point(279, 3);
            this.btn_imprimir.Name = "btn_imprimir";
            this.btn_imprimir.Size = new System.Drawing.Size(40, 40);
            this.btn_imprimir.TabIndex = 7;
            this.btn_imprimir.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_imprimir.UseVisualStyleBackColor = true;
            // 
            // btn_guardar
            // 
            this.btn_guardar.Enabled = false;
            this.btn_guardar.Image = ((System.Drawing.Image)(resources.GetObject("btn_guardar.Image")));
            this.btn_guardar.Location = new System.Drawing.Point(233, 3);
            this.btn_guardar.Name = "btn_guardar";
            this.btn_guardar.Size = new System.Drawing.Size(40, 40);
            this.btn_guardar.TabIndex = 8;
            this.btn_guardar.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_guardar.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Enabled = false;
            this.button5.Image = ((System.Drawing.Image)(resources.GetObject("button5.Image")));
            this.button5.Location = new System.Drawing.Point(187, 3);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(40, 40);
            this.button5.TabIndex = 9;
            this.button5.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.button5.UseVisualStyleBackColor = true;
            // 
            // btn_actualizar
            // 
            this.btn_actualizar.Enabled = false;
            this.btn_actualizar.Image = ((System.Drawing.Image)(resources.GetObject("btn_actualizar.Image")));
            this.btn_actualizar.Location = new System.Drawing.Point(141, 3);
            this.btn_actualizar.Name = "btn_actualizar";
            this.btn_actualizar.Size = new System.Drawing.Size(40, 40);
            this.btn_actualizar.TabIndex = 10;
            this.btn_actualizar.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_actualizar.UseVisualStyleBackColor = true;
            // 
            // btn_eliminar
            // 
            this.btn_eliminar.Enabled = false;
            this.btn_eliminar.Image = ((System.Drawing.Image)(resources.GetObject("btn_eliminar.Image")));
            this.btn_eliminar.Location = new System.Drawing.Point(95, 3);
            this.btn_eliminar.Name = "btn_eliminar";
            this.btn_eliminar.Size = new System.Drawing.Size(40, 40);
            this.btn_eliminar.TabIndex = 11;
            this.btn_eliminar.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_eliminar.UseVisualStyleBackColor = true;
            // 
            // btn_modificar
            // 
            this.btn_modificar.Enabled = false;
            this.btn_modificar.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btn_modificar.Image = ((System.Drawing.Image)(resources.GetObject("btn_modificar.Image")));
            this.btn_modificar.Location = new System.Drawing.Point(49, 3);
            this.btn_modificar.Name = "btn_modificar";
            this.btn_modificar.Size = new System.Drawing.Size(40, 40);
            this.btn_modificar.TabIndex = 12;
            this.btn_modificar.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_modificar.UseVisualStyleBackColor = true;
            // 
            // btn_insertar
            // 
            this.btn_insertar.BackColor = System.Drawing.SystemColors.ScrollBar;
            this.btn_insertar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.btn_insertar.Image = ((System.Drawing.Image)(resources.GetObject("btn_insertar.Image")));
            this.btn_insertar.Location = new System.Drawing.Point(3, 3);
            this.btn_insertar.Name = "btn_insertar";
            this.btn_insertar.Size = new System.Drawing.Size(40, 40);
            this.btn_insertar.TabIndex = 13;
            this.btn_insertar.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_insertar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btn_insertar.UseVisualStyleBackColor = false;
            this.btn_insertar.Click += new System.EventHandler(this.btn_insertar_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(696, 361);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(97, 71);
            this.button2.TabIndex = 31;
            this.button2.Text = "Verificar Inventario";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // NuevoMovimiento
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(896, 513);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.txtCodigoAplicacion);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtDescripcion);
            this.Controls.Add(this.dgVerificaExistenciasBode);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dtMovimiento);
            this.Controls.Add(this.txtFechaMovimiento);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "NuevoMovimiento";
            this.Text = "NuevoMovimiento";
            this.Load += new System.EventHandler(this.NuevoMovimiento_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgVerificaExistenciasBode)).EndInit();
            this.panel2.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DateTimePicker dtMovimiento;
        private System.Windows.Forms.TextBox txtFechaMovimiento;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnSelectTipo;
        private System.Windows.Forms.TextBox txtIdTipoMovimiento;
        private System.Windows.Forms.TextBox txtDescripcionTipoMovimiento;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtEntradaOSalida;
        private System.Windows.Forms.Button txtConsultaBodega;
        private System.Windows.Forms.TextBox txtIdBodega;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtNombreBodega;
        private System.Windows.Forms.DataGridViewTextBoxColumn cantidad;
        private System.Windows.Forms.DataGridViewTextBoxColumn idProducto;
        private System.Windows.Forms.DataGridViewButtonColumn selectProducto;
        private System.Windows.Forms.DataGridViewTextBoxColumn costoUnitario;
        private System.Windows.Forms.DataGridViewTextBoxColumn total;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridView dgVerificaExistenciasBode;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Button button12;
        private System.Windows.Forms.Button btn_adelante;
        private System.Windows.Forms.Button btn_ultimo;
        private System.Windows.Forms.Button btn_primero;
        private System.Windows.Forms.Button btn_atras;
        private System.Windows.Forms.Button btn_imprimir;
        private System.Windows.Forms.Button btn_guardar;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button btn_eliminar;
        private System.Windows.Forms.Button btn_modificar;
        private System.Windows.Forms.Button btn_insertar;
        private System.Windows.Forms.Button btn_actualizar;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txtCodigoAplicacion;
        private System.Windows.Forms.Button button2;
    }
}