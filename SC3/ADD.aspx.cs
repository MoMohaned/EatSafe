using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC3
{
    public partial class ADD : System.Web.UI.Page
    {
        public static string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SafeCateringDB.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {

                if (IsValid)
                {

                    SqlCommand cmd = new SqlCommand("insert into SC3 values( '" + date.Text + "','" + food.Text + "','" + cStartime.Text + "','" + cEndtime.Text + "','" + coretemp.Text + "','" + sign1.Text + "','"+date2.Text+"','"+fridgetime.Text+"','"+sign2.Text+"','"+date3.Text+"','"+coretemp2.Text+"','"+sign3.Text+"','"+comments.Text+"')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    panel1.Visible = false;
                    panel2.Visible = true;

                }
                else
                {
                    panel2.Visible = false;

                }
            }
            catch (Exception)
            {

                throw;
            }


        }
    }
}