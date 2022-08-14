using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(AddItem.constr);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {

                SiteMaster.username = Session["Email"].ToString();
                show();
                show2();
                show3();
                show4();
                show9();
                show8();
            }

            else
            {
                SiteMaster.username = "";
                Response.Redirect("Default.aspx");
            }
        }

        protected void sc1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Items.aspx");
        }

        protected void sc2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SC2/items.aspx");
            //SC1Panel.Visible = false;
            //SC2Panel.Visible = true;
            //show2();
        }

        protected void sc3_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SC3/items.aspx");
            //SC1Panel.Visible = false;
            //SC2Panel.Visible = false;
            //SC3Panel.Visible = true;
            //show3();
        }

        protected void sc4_Click(object sender, EventArgs e)
        {
            Response.Redirect("/SC4/items.aspx");
        }

        protected void sc5_Click(object sender, EventArgs e)
        {
            Response.Redirect("managerpagedetails.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                //details.Visible = true;
                Session["item_id"] = e.CommandArgument;
                
                Response.Redirect("About.aspx");

            }

            if (e.CommandName == "delete")
            {
                Session["item_id"] = e.CommandArgument;

                SqlCommand cmd = new SqlCommand("delete from SC1 where id =" + Convert.ToInt32(Session["item_id"]) + "", con);
                con.Open();
                cmd.ExecuteNonQuery();
               
                con.Close();
                show();
            }


        }


        private void show()
        {
            {

                string strSQL = "Select id, _Date,foodname,batchcode,suppliedby,useby as UseBy,temperature,Vehicle,Comment,Sign from SC1";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }
        private void show2()
        {
            {

                string strSQL = "Select * from SC2";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                DataList2.DataSource = ds;
                DataList2.DataBind();
            }
        }
        private void show3()
        {
            {

                string strSQL = "Select Id,Date,Food,Cooking_Start,Cooking_End,Core_Temp,Sign,F_Date,FridgeTime,F_Sign,R_Date,CoreTemp,R_Sign,Comments from SC3";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                ScDDl3.DataSource = ds;
                ScDDl3.DataBind();
            }
        }
        private void show4()
        {
            {

                string strSQL = "Select * from SC4";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                ScDDL4.DataSource = ds;
                ScDDL4.DataBind();
            }
        }


        private void show9()
        {
            {

                string strSQL = "Select * from SC9";
                SqlDataAdapter dt = new SqlDataAdapter(strSQL, con);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                ScDDL9.DataSource = ds;
                ScDDL9.DataBind();
            }
        }
        private void show8()
        {
            {

                SqlCommand cmd = new SqlCommand("SC8", con);
                cmd.CommandType = CommandType.StoredProcedure;
               
                SqlDataAdapter dt = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                dt.Fill(ds);
                con.Close();
                ScDDL8.DataSource = ds;
                ScDDL8.DataBind();
            }
        }


        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                //details.Visible = true;
                Session["sc2id"] = e.CommandArgument;

                Response.Redirect("/SC2/Details.aspx");

            }

            if (e.CommandName == "delete")
            {
                Session["sc2id"] = e.CommandArgument;

                SqlCommand cmd = new SqlCommand("delete from SC2 where Id =" + Convert.ToInt32(Session["sc2id"]) + "", con);
                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
                show();
            }

        }

        protected void ScDDl3_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                //details.Visible = true;
                Session["sc3id"] = e.CommandArgument;

                Response.Redirect("/SC3/Details.aspx");

            }

            if (e.CommandName == "delete")
            {
                Session["sc3id"] = e.CommandArgument;

                SqlCommand cmd = new SqlCommand("delete from SC3 where Id =" + Convert.ToInt32(Session["sc3id"]) + "", con);
                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
                show3();
            }

        }

        protected void ScDDL4_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                //details.Visible = true;
                Session["sc4id"] = e.CommandArgument;

                Response.Redirect("/SC4/Details.aspx");

            }

            if (e.CommandName == "delete")
            {
                Session["sc4id"] = e.CommandArgument;

                SqlCommand cmd = new SqlCommand("delete from SC4 where Id =" + Convert.ToInt32(Session["sc4id"]) + "", con);
                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
                show4();
            }
        }

        protected void ScDDL9_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                //details.Visible = true;
                Session["sc9id"] = e.CommandArgument;

                Response.Redirect("/SC9/Details.aspx");

            }

            if (e.CommandName == "delete")
            {
                Session["sc9id"] = e.CommandArgument;

                SqlCommand cmd = new SqlCommand("delete from SC9 where Id =" + Convert.ToInt32(Session["sc9id"]) + "", con);
                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
                show9();
            }

        }
    }
}