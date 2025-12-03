using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var currentUrl = Request.AppRelativeCurrentExecutionFilePath;
            var menuUser = (NavLoginView.FindControl("MenuAdmin") as Menu ?? NavLoginView.FindControl("MenuUser") as Menu) ?? NavLoginView.FindControl("MenuAnon") as Menu;
            if (menuUser != null) {

                foreach (MenuItem item in menuUser.Items)
                {
                    if (item.NavigateUrl.Equals(currentUrl, StringComparison.OrdinalIgnoreCase))
                    {
                        item.Selected = true;
                    }
                }



            }
        }
    }
}
