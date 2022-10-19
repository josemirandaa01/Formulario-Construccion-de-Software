using lab_7_bd.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Laboratorio_7
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text);
            string Cedula = CedulaText.Text;
            string Nombre = NombreText.Text;
            string Apellido = ApellidoText.Text;
            DateTime Fnacimiento = FnacimientoCalendar.SelectedDate;
            string Rango = TextBox2.Text;
            bool Sexo = Convert.ToBoolean(RadioButtonList1.SelectedValue);
            DateTime Fingreso = FingresoCalendar.SelectedDate;
            string Estado = TextBox3.Text;

            QueriesTableAdapter Adapter = new QueriesTableAdapter();
            Adapter.sp_Iraq(id, Cedula, Nombre, Apellido, Fnacimiento, Rango, Sexo, Fingreso, Estado);

        }
    }
}