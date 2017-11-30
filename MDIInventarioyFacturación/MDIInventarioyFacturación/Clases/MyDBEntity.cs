using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.Data;
using System.Collections;

namespace MDIInventarioyFacturación
{
    class MyDBEntity
    {

        //variables para acceder y manipular la bd
        public MySqlConnection conexion;
        private MySqlCommand comando;
        private MySqlDataAdapter adaptador; //v3
        private DataTable tabla = new DataTable();  //v3


        //metodo para declarar una tabla v3
        public DataTable CargarTabla(string SQL)
        {
            try
            {

                //usamos el metodo conectar v3
                conectar();
                comando = new MySqlCommand(SQL);
                comando.Connection = conexion;
                adaptador = new MySqlDataAdapter(comando);
                adaptador.Fill(tabla);
                return tabla;

            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
                return null;
            }
        }


        //metodo para indicar el procedimiento a utiliza v2
        public void ProcedimientoAlmacenado(string Nombre_del_Procedimiento)
        {
            try
            {

                //conexión con la bd v2
                //se indica que conexión va a trabajar v2
                conectar();
                comando = new MySqlCommand(Nombre_del_Procedimiento);
                comando.Connection = conexion;


            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
            }
        }


        //Metodo para agregar los parámetros del procedimiento
        public void AddParametro(string Nombre_del_Parametro, string Valor_del_parametro)
        {

            try
            {
                //se indican los parametros del objeto al comando
                comando.Parameters.AddWithValue(Nombre_del_Parametro, Valor_del_parametro);

            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
            }

        }


        //Método para ejecutar la consulta que hara el llamado al procedimiento
        public int EjecutarParametro()
        {
            int res = 0;

            try
            {
                //se captura el resultado de la ejecucion de la consulta y se devuelve
                res = comando.ExecuteNonQuery();
                return res;

            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
                return res;
            }
        }


        //metodo para conectar la Bd
        public void conectar()
        {
            try
            {

                //datos necesarios para conectar la bd con mysql
                conexion = new MySqlConnection();
                conexion.ConnectionString = "server=localhost; database=hotelfase2; uid=root;";
                conexion.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
            }
        }

        public void EjecutarSQL(string SQL)
        {
            try
            {

                //llamamos al metodo que conecta la bd
                conectar();
                comando = new MySqlCommand(SQL);
                comando.Connection = conexion;
                //ejecutar la consulta sql
                comando.ExecuteNonQuery();
                conexion.Close();
                conexion.Dispose();
                comando.Dispose();


            }
            catch (Exception ex)
            {
                MessageBox.Show("ERROR: " + ex.Message);
            }
        }





    }
}
