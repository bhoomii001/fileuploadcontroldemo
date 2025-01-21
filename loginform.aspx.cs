using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace fileuploadcontroldemo
{
    public partial class loginform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\quick\\fileuploadcontroldemo\\App_Data\\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            string query = "select username,password from login where username='"+UNAMETXT.Text +"' and password='"+PWDTXT.Text+"'";
            SqlCommand cmd=new SqlCommand(query, con);
            SqlDataReader dr=cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["id"] = UNAMETXT.Text;
                Response.Redirect("Webform1.aspx");
            }
            else
            {
                Response.Write("data not match");
            }
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}