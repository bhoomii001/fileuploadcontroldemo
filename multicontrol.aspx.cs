using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fileuploadcontroldemo
{
    public partial class multicontrol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(login);
        }

        protected void previousbtn_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(register);
        }

        protected void nxtbtn_Click(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(home);
        }

        protected void cnfmtxt_TextChanged(object sender, EventArgs e)
        {

        }
    }
}