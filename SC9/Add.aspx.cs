using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC9
{
    public partial class Add : System.Web.UI.Page
    {
        public static string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SafeCateringDB.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void btnadd_Click1(object sender, EventArgs e)
        {
            try
            {

               
                    SqlCommand cmd = new SqlCommand("insert into SC9 values( '" + date.Text + "','" + food.Text + "'," + quantity.Text + ",'" + batchcode.Text + "','" + customer.Text + "','" + deltemp.Text + "','" + seperation.SelectedItem.Value + "','" + sign.Text + "','" + comments.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    panel1.Visible = false;
                    panel2.Visible = true;

                
            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SC9/items.aspx");
        }
    }
}