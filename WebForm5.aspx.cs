using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace fileuploadcontroldemo
{
    
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\quick\\fileuploadcontroldemo\\App_Data\\Database2.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_btn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into register values('"+ nametxt.Text+"','"+semtext.Text+"','"+branchtxt.Text+"','"+pwdtxt.Text+"','"+emailtxt.Text+"');",con);
            cmd.ExecuteNonQuery();
            Response.Write("registerd....");
            con.Close();
        }
    }
}