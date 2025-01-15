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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path;
            string file = FileUpload1.FileName;
            path=Server.MapPath("~\\FILES\\")+file;
            FileUpload1.SaveAs(path);
            Label1.Text = "FILE UPLOADED";        
        }
    }
}