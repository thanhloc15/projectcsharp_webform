using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String username = txtUsername.Text.Trim();
            String password = txtPassword.Text.Trim();
            SqlConnection conn = new SqlConnection("Data Source=SE130721;Initial Catalog=HaritiShopping;Integrated Security=True");
            conn.Open();
            SqlCommand comm = new SqlCommand("select * from tblAccount where username='" + username + "' and password='" + password + "'" , conn);
            SqlDataReader dr = comm.ExecuteReader();
            if (dr.Read())
            {
                Label4.Text = "Login Success";
                Response.Redirect("ManageProduct.aspx");
            } else
            {
                Label4.Text = "Login Fail";
            }
            conn.Close();
        }
    }
}