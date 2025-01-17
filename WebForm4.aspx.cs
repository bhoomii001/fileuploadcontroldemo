using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fileuploadcontroldemo
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(login);
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(view1);
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Response.Write("this is multiview control");
        }
    }
}