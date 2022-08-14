using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Safe_Catering
{
    public partial class Items : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);
        public int itemid;
        public int forid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();


                show();

            }
            else
            {
                SiteMaster.username = "";
                Response.Redirect("Default.aspx");
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            details.Visible = false;
        }


        private void show()
        {
            {

                string strSQL = "Select * from SC1";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                showdata.DataSource = ds;
                showdata.DataBind();
            }
        }





        protected void showdata_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "date_dt")
            {
                //details.Visible = true;
                Session["item_id"] = e.CommandArgument;
                itemid = Convert.ToInt32(e.CommandArgument);
                Edit_delete(itemid);
                Response.Redirect("About.aspx");

            }
        }





        public void Edit_delete(int id)
        {


            con.Open();

            SqlCommand Comm1 = new SqlCommand("select * from SC1 where id =" + id + "", con);

            SqlDataReader DR1 = Comm1.ExecuteReader();
            if (DR1.Read())
            {
                forid = Convert.ToInt32(DR1.GetValue(0));
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


        public void Update(int id)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("update SC1 set _Date = '" + date.Text + "', foodname = '" + foodname.Text + "', batchcode = '" + batchcode.Text + "', suppliedby = '" + supplied.Text + "', useby = '" + useby.Text + "', temperature = '" + tempt.Text + "', Vehicle =  '" + VStatus.SelectedValue + "', Comment = '" + comments.Text + "', Sign = '" + sign.Text + "' where id =" + forid + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                show();

                details.Visible = false;

            }
            catch (Exception)
            {

                throw;
            }

        }




        public void Delete(int id)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("delete from SC1 where id =" + forid + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                show();

                details.Visible = false;

            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void edit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update SC1 set _Date = '" + date.Text + "', foodname = '" + foodname.Text + "', batchcode = '" + batchcode.Text + "', suppliedby = '" + supplied.Text + "', useby = '" + useby.Text + "', temperature = '" + tempt.Text + "', Vehicle =  '" + VStatus.SelectedValue + "', Comment = '" + comments.Text + "', Sign = '" + sign.Text + "' where id =" + Convert.ToInt32(Session["item_id"]) + "", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            show();

            details.Visible = false;

        }

        protected void delete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from SC1 where id =" + Convert.ToInt32(Session["item_id"]) + "", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            show();

            details.Visible = false;
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddItem.aspx");
        }
    }
}