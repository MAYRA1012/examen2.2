using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;


namespace Examen_2_Ramon
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LlenarGrid();


        }


        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["Bases"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Select m.NomApels AS 'Nombre Apellidos', m.Codigo, c.Nombre, c.Precio ,d.Piso " +
                    "from Cajeros m inner join Productos c on m.Codigo = c.Codigo inner join Maquinas_Registradoras d on m.Codigo = d.Codigo"))


                {

                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;

                            GridView1.DataBind();

                        }


                    }



                }



            }

        }












    }
}