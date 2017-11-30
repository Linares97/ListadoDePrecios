namespace MDIInventarioyFacturación
{
    partial class Poliza
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
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.fechapoliza = new System.Windows.Forms.DateTimePicker();
            this.concepto = new System.Windows.Forms.TextBox();
            this.fechafinal = new System.Windows.Forms.DateTimePicker();
            this.fechainicial = new System.Windows.Forms.DateTimePicker();
            this.periodo = new System.Windows.Forms.TextBox();
            this.Guardar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(340, 25);
            this.label1.TabIndex = 1;
            this.label1.Text = "Traslado de Inventario a Póliza";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(25, 275);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(86, 13);
            this.label6.TabIndex = 63;
            this.label6.Text = "Fecha de Póliza:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(25, 229);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(56, 13);
            this.label5.TabIndex = 62;
            this.label5.Text = "Concepto:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(25, 185);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 13);
            this.label4.TabIndex = 61;
            this.label4.Text = "Fecha Final:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(25, 141);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(70, 13);
            this.label2.TabIndex = 60;
            this.label2.Text = "Fecha Inicial:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(25, 89);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(46, 13);
            this.label3.TabIndex = 59;
            this.label3.Text = "Periodo:";
            // 
            // fechapoliza
            // 
            this.fechapoliza.Location = new System.Drawing.Point(141, 266);
            this.fechapoliza.Name = "fechapoliza";
            this.fechapoliza.Size = new System.Drawing.Size(200, 20);
            this.fechapoliza.TabIndex = 68;
            // 
            // concepto
            // 
            this.concepto.Location = new System.Drawing.Point(141, 223);
            this.concepto.Name = "concepto";
            this.concepto.Size = new System.Drawing.Size(109, 20);
            this.concepto.TabIndex = 67;
            // 
            // fechafinal
            // 
            this.fechafinal.Location = new System.Drawing.Point(141, 176);
            this.fechafinal.Name = "fechafinal";
            this.fechafinal.Size = new System.Drawing.Size(200, 20);
            this.fechafinal.TabIndex = 66;
            // 
            // fechainicial
            // 
            this.fechainicial.Location = new System.Drawing.Point(141, 132);
            this.fechainicial.Name = "fechainicial";
            this.fechainicial.Size = new System.Drawing.Size(200, 20);
            this.fechainicial.TabIndex = 65;
            // 
            // periodo
            // 
            this.periodo.Location = new System.Drawing.Point(141, 86);
            this.periodo.Name = "periodo";
            this.periodo.Size = new System.Drawing.Size(109, 20);
            this.periodo.TabIndex = 64;
            // 
            // Guardar
            // 
            this.Guardar.Location = new System.Drawing.Point(389, 291);
            this.Guardar.Name = "Guardar";
            this.Guardar.Size = new System.Drawing.Size(75, 23);
            this.Guardar.TabIndex = 69;
            this.Guardar.Text = "Guardar";
            this.Guardar.UseVisualStyleBackColor = true;
            // 
            // Poliza
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(476, 326);
            this.Controls.Add(this.Guardar);
            this.Controls.Add(this.fechapoliza);
            this.Controls.Add(this.concepto);
            this.Controls.Add(this.fechafinal);
            this.Controls.Add(this.fechainicial);
            this.Controls.Add(this.periodo);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Name = "Poliza";
            this.Text = "Poliza";
            this.Load += new System.EventHandler(this.Poliza_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker fechapoliza;
        private System.Windows.Forms.TextBox concepto;
        private System.Windows.Forms.DateTimePicker fechafinal;
        private System.Windows.Forms.DateTimePicker fechainicial;
        private System.Windows.Forms.TextBox periodo;
        private System.Windows.Forms.Button Guardar;
    }
}