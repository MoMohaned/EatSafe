using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Safe_Catering
{
    public partial class SiteMaster : MasterPage
    {
        public static string username;

        protected void Page_Load(object sender, EventArgs e)
        {

            uname.Text = username;
            
            if (Session["Email"] != null)
            {
                username = Session["Email"].ToString();

                logout.Visible = true;
            
            }
            else
            {
                username = "";

                logout.Visible = false;

            }
        }
    }
}