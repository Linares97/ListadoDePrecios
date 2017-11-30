using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MovimientoDeInventario
{
    public partial class NuevoMovimiento : Form
    {

        // variable gloval que verifica si se ingreso un detalle
        bool ingresoPrimerDetalle = false;
        int lastMasterId = -1;

        public NuevoMovimiento()
        {
            InitializeComponent();
            

        }

        private void NuevoMovimiento_Load(object sender, EventArgs e)
        {

        }

        private void dtMovimiento_ValueChanged(object sender, EventArgs e)
        {
//            txtFechaMovimiento.Text = dtMovimiento.Value.ToString("dd/MM/yyyy");
            txtFechaMovimiento.Text = dtMovimiento.Value.ToString("yyy/MM/dd");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            FormTiposDeMovimiento selecType = new FormTiposDeMovimiento();
            selecType.ShowDialog();
            // we have to fill the data with the data that he select
            txtIdTipoMovimiento.Text = Program.idTipoDeMovimiento.ToString();
            txtDescripcionTipoMovimiento.Text = Program.nombreDelMovimienot;
            txtEntradaOSalida.Text = Program.IngreOEgreMov.ToString();

            // we have to display the data depending of the type of input
            // ingreso =1 , egreso =0
            


        }

        private void txtConsultaBodega_Click(object sender, EventArgs e)
        {
            FormDataGridBodega selectBodega = new FormDataGridBodega();
            selectBodega.ShowDialog();

            // fill the textbox with the data
            txtIdBodega.Text = Program.idBodega.ToString();
            txtNombreBodega.Text = Program.nombreDeLaBodega;


        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
         if(e.ColumnIndex == 2)
            {
                // is the colum of button
                if(e.RowIndex >= 0)
                {

                    if (dataGridView1.Rows[e.RowIndex].Cells[0].Value == null)
                    {
                        MessageBox.Show("Ingrese Cantidad del producto");
                    }else
                    {

                        /*-------------onclic event of the button cell--------*/
                        FormSelectProducto selectionProducto = new FormSelectProducto();
                        selectionProducto.ShowDialog();

                        // save the data that we have 
                        // codigo del producto
                        dataGridView1.Rows[e.RowIndex].Cells[1].Value = Program.idProducto;
                        dataGridView1.Rows[e.RowIndex].Cells[3].Value = Program.precioUnitario;
                        dataGridView1.Rows[e.RowIndex].Cells[2].Value = Program.nombreDelProducto;

                        // Costo Total Del producto
                        dataGridView1.Rows[e.RowIndex].Cells[4].Value =
                            (Int32.Parse(dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString()) * Int32.Parse(Program.precioUnitario.ToString())).ToString();


                        /*
                        // the event
                        MessageBox.Show("Columna "+e.ColumnIndex+" Fila "+e.RowIndex);

                        // we can change values like this ..
                        dataGridView1.Rows[0].Cells[3].Value = "nuevo";
                        */

                    }

                }
            }else
            {

            }
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void txtFechaMovimiento_TextChanged(object sender, EventArgs e)
        {

        }

     public void IngresarDatosFinal()
        {

            if(txtEntradaOSalida.Text == "1")
            {
                // es entrada
                // rrecorrer todas las filas del datagrid view
                int counter = 0;
                foreach (DataGridViewRow dr in dataGridView1.Rows)
                {
                    if (counter == dataGridView1.Rows.Count - 1)
                    {
                        // is the last value
                        MessageBox.Show("Transaccion Ingresada Exitosamente");
                    }
                    else
                    {
                        // Current Data
                        // Store the id of the producto
                        int CodigoDelProducto = Int32.Parse(Convert.ToString(dr.Cells["idProducto"].Value));
                        int CantidadAgregaProducto = Int32.Parse(Convert.ToString(dr.Cells["cantidad"].Value));

                        /*---------------------------------------------------------------*/
                        dllconnectionDatabase.dllconnectionDatabase connection = new dllconnectionDatabase.dllconnectionDatabase(Program.stringpad);
                        connection.OpenConnection();
                        String queryExistencias = @"select * from detallebodega
                                                    where bodega_idBodega = " + Program.idBodega + " and productos_idProducto = " + CodigoDelProducto;

                        dgVerificaExistenciasBode.DataSource = connection.llenarDataGridView(queryExistencias);
                        connection.CloseConnection();

                        /*-----------------------------------------------------------------------*/

                        if ((Int32.Parse(dgVerificaExistenciasBode.Rows.Count.ToString()) - 1) == 0)
                        {
                            // no existe este producto
                            MessageBox.Show("NO existe este producto en la bodega");
                            // devemos de ingresar el producto en la bodega
                            string queryIngresoBodegaNoExiste = @"INSERT INTO detallebodega (cantidad, bodega_idBodega, productos_idProducto) VALUES ( " + CantidadAgregaProducto + ", " + Program.idBodega + ", " + CodigoDelProducto + ")";

                            connection.OpenConnection();


                            connection.InsertarRegistro(queryIngresoBodegaNoExiste);


                            connection.CloseConnection();



                        }
                        else
                        {
                            // si existe este producto
                            // MessageBox.Show("Si existe este producto");
                            // si si existe el producto devemos de actualizar el registro y sumar
                            int sumatoriaNuevaCantidadPro = Int32.Parse(CantidadAgregaProducto.ToString()) + Int32.Parse(dgVerificaExistenciasBode.Rows[0].Cells[1].Value.ToString());
                            String queryIngresoBodegaExistente = @"update detallebodega set cantidad = " + sumatoriaNuevaCantidadPro + "  where bodega_idBodega = " + Program.idBodega + " and productos_idProducto = " + CodigoDelProducto;


                            /*--------------------------------------------------------------------*/




                            connection.OpenConnection();


                            connection.InsertarRegistro(queryIngresoBodegaExistente);


                            connection.CloseConnection();




                            /*-------------------------------------------------------------------------------*/
                        }

                        // termino la transaccino 

                        // termino la transaccion 
                        if (!ingresoPrimerDetalle)
                        {
                            // Ingresar el master de el movimiento inventario
                            string masterinsert = @"INSERT INTO movimientoInventario (fecha,descripcion,TipoMovimientoIventario_idTipoMovimientoIventario,bodega_idBodegaDestino) VALUES ('" + txtFechaMovimiento.Text + "','" + txtDescripcion.Text + "'," + txtIdTipoMovimiento.Text + "," + txtIdBodega.Text + ");";
                            // solo bodega destino porque esta llegando el producto a la bodega
                            connection.OpenConnection();
                            connection.InsertarRegistro(masterinsert);
                            lastMasterId = connection.retornoUltimoIngreso();



                            int currentCostoUnitario = Int32.Parse(Convert.ToString(dr.Cells["costoUnitario"].Value));
                            int currentcostoTotal = Int32.Parse(Convert.ToString(dr.Cells["total"].Value));

                            string detalleInsert = @"INSERT INTO DetalleMovimiento (Cantidad, CostoUnitario, CostoTotal, productos_idProducto, movimientoInventario_codigoMovimientoInventario) 
                                                                                                VALUES (" + CantidadAgregaProducto + ", " + currentCostoUnitario + "," + currentcostoTotal + ", " + CodigoDelProducto + ", " + lastMasterId + ");";



                            connection.InsertarRegistro(detalleInsert);
                            connection.CloseConnection();
                            //MessageBox.Show(connection.retornoUltimoIngreso().ToString());

                            // ingresar la transaccion que se realizo



                            // es la primera transacion 
                            ingresoPrimerDetalle = true;
                        }
                        else
                        {
                            // ya hay mas transaccione
                            // solo ingresar el detall e

                            int currentCostoUnitario = Int32.Parse(Convert.ToString(dr.Cells["costoUnitario"].Value));
                            int currentcostoTotal = Int32.Parse(Convert.ToString(dr.Cells["total"].Value));

                            string detalleInsert = @"INSERT INTO DetalleMovimiento (Cantidad, CostoUnitario, CostoTotal, productos_idProducto, movimientoInventario_codigoMovimientoInventario) 
                                                                                                VALUES (" + CantidadAgregaProducto + ", " + currentCostoUnitario + "," + currentcostoTotal + ", " + CodigoDelProducto + ", " + lastMasterId + ");";


                            connection.OpenConnection();
                            connection.InsertarRegistro(detalleInsert);
                            connection.CloseConnection();

                        }

                    }

                    counter++;

                }


            }
            else
            {
                // es salida de inventario

                int counterSalida = 0;
                foreach (DataGridViewRow dr in dataGridView1.Rows)
                {
                    if (counterSalida == dataGridView1.Rows.Count - 1)
                    {
                        // is the last value
                        MessageBox.Show("Transaccion Ingresada Exitosamente");
                    }
                    else
                    {
                        // Current Data
                        // Store the id of the producto
                        int CodigoDelProducto = Int32.Parse(Convert.ToString(dr.Cells["idProducto"].Value));
                        int CantidadAgregaProducto = Int32.Parse(Convert.ToString(dr.Cells["cantidad"].Value));

                        // verificar si el producto existe en la base de datos
                        /*---------------------------------------------------------------*/
                        dllconnectionDatabase.dllconnectionDatabase connection = new dllconnectionDatabase.dllconnectionDatabase(Program.stringpad);
                        connection.OpenConnection();
                        String queryExistencias = @"select * from detallebodega
                                                    where bodega_idBodega = " + Program.idBodega + " and productos_idProducto = " + CodigoDelProducto;

                        dgVerificaExistenciasBode.DataSource = connection.llenarDataGridView(queryExistencias);
                        connection.CloseConnection();

                        /*-----------------------------------------------------------------------*/

                        if ((Int32.Parse(dgVerificaExistenciasBode.Rows.Count.ToString()) - 1) == 0)
                        {
                            // no existe este producto
                            MessageBox.Show("NO existe este producto en la bodega");

                        }
                        else
                        {
                            // si existe este producto
                            //  MessageBox.Show("Si existe este producto");
                            // si si existe el producto devemos de actualizar el registro y sumar

                            int restaNuevaCantidadProducto = Int32.Parse(dgVerificaExistenciasBode.Rows[0].Cells[1].Value.ToString()) - Int32.Parse(CantidadAgregaProducto.ToString());
                            if (restaNuevaCantidadProducto < 0)
                            {
                                MessageBox.Show("Su transaccion es invalida");
                            }
                            else
                            {
                                // transaccion si es valida
                                String queryIngresoBodegaExistente = @"update detallebodega set cantidad = " + restaNuevaCantidadProducto + "  where bodega_idBodega = " + Program.idBodega + " and productos_idProducto = " + CodigoDelProducto;


                                /*--------------------------------------------------------------------*/




                                connection.OpenConnection();


                                connection.InsertarRegistro(queryIngresoBodegaExistente);


                                connection.CloseConnection();


                                /*-------------------------------------------------------------------------------*/
                                /*****************************************************************************************/

                                // termino la transaccion 
                                if (!ingresoPrimerDetalle)
                                {
                                    // Ingresar el master de el movimiento inventario
                                    string masterinsert = @"INSERT INTO movimientoInventario (fecha,descripcion,TipoMovimientoIventario_idTipoMovimientoIventario,bodega_idBodegaOrigen) VALUES ('" + txtFechaMovimiento.Text + "','" + txtDescripcion.Text + "'," + txtIdTipoMovimiento.Text + "," + txtIdBodega.Text + ");";
                                    // solo bodega destino porque esta llegando el producto a la bodega
                                    connection.OpenConnection();
                                    connection.InsertarRegistro(masterinsert);
                                    lastMasterId = connection.retornoUltimoIngreso();



                                    int currentCostoUnitario = Int32.Parse(Convert.ToString(dr.Cells["costoUnitario"].Value));
                                    int currentcostoTotal = Int32.Parse(Convert.ToString(dr.Cells["total"].Value));

                                    string detalleInsert = @"INSERT INTO DetalleMovimiento (Cantidad, CostoUnitario, CostoTotal, productos_idProducto, movimientoInventario_codigoMovimientoInventario) 
                                                                                                VALUES (" + CantidadAgregaProducto + ", " + currentCostoUnitario + "," + currentcostoTotal + ", " + CodigoDelProducto + ", " + lastMasterId + ");";



                                    connection.InsertarRegistro(detalleInsert);
                                    connection.CloseConnection();
                                    //MessageBox.Show(connection.retornoUltimoIngreso().ToString());

                                    // ingresar la transaccion que se realizo



                                    // es la primera transacion 
                                    ingresoPrimerDetalle = true;
                                }
                                else
                                {
                                    // ya hay mas transaccione
                                    // solo ingresar el detall e

                                    int currentCostoUnitario = Int32.Parse(Convert.ToString(dr.Cells["costoUnitario"].Value));
                                    int currentcostoTotal = Int32.Parse(Convert.ToString(dr.Cells["total"].Value));

                                    string detalleInsert = @"INSERT INTO DetalleMovimiento (Cantidad, CostoUnitario, CostoTotal, productos_idProducto, movimientoInventario_codigoMovimientoInventario) 
                                                                                                VALUES (" + CantidadAgregaProducto + ", " + currentCostoUnitario + "," + currentcostoTotal + ", " + CodigoDelProducto + ", " + lastMasterId + ");";


                                    connection.OpenConnection();
                                    connection.InsertarRegistro(detalleInsert);
                                    connection.CloseConnection();

                                }

                                /*******************************************************************************************/

                            }



                        }

                    }

                    counterSalida++;

                }


            }

            

            limpiaArea();

        }


        private void button1_Click_1(object sender, EventArgs e)
        {
            
        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        public void limpiaArea()
        {
            dataGridView1.Rows.Clear();
           // dgVerificaExistenciasBode.Rows.Clear();
            txtDescripcion.Text = "";
            txtFechaMovimiento.Text = "";
            txtIdBodega.Text = "";
            txtNombreBodega.Text = "";
            txtDescripcionTipoMovimiento.Text = "";
            txtIdTipoMovimiento.Text = "";
            txtEntradaOSalida.Text = "";

            ingresoPrimerDetalle = false;
            lastMasterId = -1;

            /*Limpiar variablesglovales*/

              Program.idTipoDeMovimiento = 0;
            Program.nombreDelMovimienot = "";
            Program.IngreOEgreMov = 0;


            /*Variables glovales para la seleccion de bodega*/
            Program.idBodega = 0;
            Program.nombreDeLaBodega = "";

            /*Variables glovales para la selecion de el producto*/
            Program.idProducto = 0;
            Program.nombreDelProducto = "";
            Program.precioUnitario = 0;

    }

        private void btn_insertar_Click(object sender, EventArgs e)
        {
            IngresarDatosFinal();
            

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            MuestraInventario miformn = new MuestraInventario();
            miformn.ShowDialog();

        }
    }
}

