using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class About : System.Web.UI.Page
    {
        //int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            int i = MultiView1.ActiveViewIndex;
            i++;
            Label1.Text = "" + (i % 3);
            MultiView1.ActiveViewIndex = i % 3;
            //MultiView1.ActiveViewIndex %= 3;
        }
    }
}
