using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering
{
    public partial class About : Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();

                itid.Text = Session["item_id"].ToString();

                if (!Page.IsPostBack)
                {

                    con.Open();

                    SqlCommand Comm1 = new SqlCommand("select * from SC1 where id =" + Convert.ToInt32(Session["item_id"]) + "", con);

                    SqlDataReader DR1 = Comm1.ExecuteReader();
                    if (DR1.Read())
                    {
                        date.Text = DR1.GetValue(1).ToString();
                        foodname.Text = DR1.GetValue(2).ToString();
                        batchcode.Text = DR1.GetValue(3).ToString();
                        supplied.Text = DR1.GetValue(4).ToString();
                        useby.Text = DR1.GetValue(5).ToString();
                        tempt.Text = DR1.GetValue(6).ToString();
                        VStatus.Text = DR1.GetValue(7).ToString();
                        comments.Text = DR1.GetValue(8).ToString();
                        sign.Text = DR1.GetValue(9).ToString();
                    }
                    con.Close();


                }


            }
            else
            {
                SiteMaster.username = "";
                Response.Redirect("Default.aspx");
            }

        }

        protected void edit_Click(object sender, EventArgs e)
        {
            

                try
                {
                    SqlCommand cmd = new SqlCommand("update SC1 set _Date = '" + date.Text + "', foodname = '" + foodname.Text + "', batchcode = '" + batchcode.Text + "', suppliedby = '" + supplied.Text + "', useby = '" + useby.Text + "', temperature = '" + tempt.Text + "', Vehicle =  '" + VStatus.SelectedValue + "', Comment = '" + comments.Text + "', Sign = '" + sign.Text + "' where id =" + itid.Text + "", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Items.aspx");

                }
                catch (Exception)
                {

                    throw;
                }
            
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Items.aspx");

        }
    }
}