using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC9
{
    public partial class Details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();


                if (!Page.IsPostBack)
                {

                    con.Open();

                    SqlCommand Comm1 = new SqlCommand("select * from SC9 where Id =" + Convert.ToInt32(Session["sc9id"]) + "", con);

                    SqlDataReader DR1 = Comm1.ExecuteReader();
                    if (DR1.Read())
                    {
                        date.Text = DR1.GetValue(1).ToString();
                        food.Text = DR1.GetValue(2).ToString();
                        quantity.Text = DR1.GetValue(3).ToString();
                        batchcode.Text = DR1.GetValue(4).ToString();
                        customer.Text = DR1.GetValue(5).ToString();
                        deltemp.Text = DR1.GetValue(6).ToString();
                        seperation.Text = DR1.GetValue(7).ToString();
                        comments.Text = DR1.GetValue(8).ToString();
                        sign.Text = DR1.GetValue(9).ToString();

                    }
                    con.Close();


                }

            }
            else
            {
                SiteMaster.username = "";
                Response.Redirect("~/Default.aspx");
            }


        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("update SC9 set Date = '" + date.Text + "' ,FoodDelv = '" + food.Text + "',Quantity = " + quantity.Text + ", BatchCode = '" + batchcode.Text + "', CustomerDetails = '" + customer.Text + "', DelTemp = '" + deltemp.Text + "' ,AddSeperation = '"+seperation.SelectedItem.Value+"' ,Comments = '" + comments.Text + "', Sign = '" + sign.Text + "' where Id =" + Convert.ToInt32(Session["sc9id"]) + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("items.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("items.aspx");
        }
    }
}