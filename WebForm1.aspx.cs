using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fileuploadcontroldemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Session["Id"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string file = FileUpload1.FileName;
            string path=Server.MapPath("~\\FILES\\")+file;
            FileUpload1.SaveAs(path);
            Label1.Text = "FILE UPLOADED";        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == null)
            {
                Response.Redirect("error");
            }
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }
    }
}