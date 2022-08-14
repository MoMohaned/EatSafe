using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering.SC3
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

                SqlCommand Comm1 = new SqlCommand("select * from SC3 where Id =" + Convert.ToInt32(Session["sc3id"]) + "", con);

                SqlDataReader DR1 = Comm1.ExecuteReader();
                if (DR1.Read())
                {
                    date.Text = DR1.GetValue(1).ToString();
                    food.Text = DR1.GetValue(2).ToString();
                    cStartime.Text = DR1.GetValue(3).ToString();
                    cEndtime.Text = DR1.GetValue(4).ToString();
                    coretemp.Text = DR1.GetValue(5).ToString();
                    sign1.Text = DR1.GetValue(6).ToString();
                    date2.Text = DR1.GetValue(7).ToString();
                    fridgetime.Text = DR1.GetValue(8).ToString();
                    sign2.Text = DR1.GetValue(9).ToString();
                    date3.Text = DR1.GetValue(10).ToString();
                    coretemp2.Text = DR1.GetValue(11).ToString();
                    sign3.Text = DR1.GetValue(12).ToString();
                    comments.Text = DR1.GetValue(13).ToString();

                }
                con.Close();

                }
                else
                {
                    SiteMaster.username = "";
                    Response.Redirect("~/Default.aspx");
                }


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("items.aspx");
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("update SC3 set  Date = '" + date.Text + "' ,Food = '" + food.Text + "', Cooking_Start = '" +cStartime.Text + "', Cooking_End = '" + cEndtime.Text + "', Core_Temp = '" + coretemp.Text + "', Sign = '" + sign1.Text + "' ,F_Date = '"+date2.Text+"', FridgeTime = '"+fridgetime.Text+"',F_Sign ='"+sign2.Text+"',R_Date = '"+date3.Text+"' , CoreTemp ='"+coretemp2.Text+"', R_Sign = '"+sign3.Text+"', Comments = '"+comments.Text+"' where Id =" + Convert.ToInt32(Session["sc3id"]) + "", con);
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
    }
}