using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering
{
    public partial class ManageralPage : System.Web.UI.Page
    {
        public static string constr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\SafeCateringDB.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {

            StartUpLoad();

        }


        private void StartUpLoad()
        {
            //get the file name of the posted image  
            string imgName = myfile.FileName;
            //sets the image path  
            string imgPath = "~/Images/" + imgName;
            //get the size in bytes that  

            
            //validates the posted file before saving  
            if (myfile.PostedFile != null && myfile.PostedFile.FileName != "")
            {
                // 10240 KB means 10MB, You can change the value based on your requirement  
                
                    //then save it to the Folder  
                    myfile.SaveAs(Server.MapPath(imgPath));
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Data has been saved!')", true);

                    SqlCommand cmd = new SqlCommand("insert into SC5_6_7 values( '" + date.Text + "','" + imgPath + "','" + table.SelectedItem.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    panel1.Visible = false;
                    panel2.Visible = true;

                

            }
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("managerpagedetails.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("managerpagedetails.aspx");
        }
    }
}