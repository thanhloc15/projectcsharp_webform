using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Web.Services.Description;

namespace Project
{
    public partial class AddProduct : System.Web.UI.Page
    {
        static String imagelink;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getproductid();
                filldata();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim().Length == 0 || TextBox2.Text.Trim().Length == 0)
            {
                Label4.Text = "Please fill of data. Thanks!!!!";
                return;
            }
            if (uploadimage() == true)
            {
                String query = "insert into productdetail(productid,productname,price,productimage) values(" + Label3.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + imagelink + "')";
                String mycon = "Data Source=SE130721;Initial Catalog=HaritiShopping;Integrated Security=True";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
               
                cmd.ExecuteNonQuery();
                Label4.Text = "Product Has Been Successfully Saved";
                getproductid();
                TextBox1.Text = "";
                TextBox2.Text = "";
                filldata();
            }
            
        }
        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {

                    FileUpload1.SaveAs(Server.MapPath("~/images/") + Label3.Text + ".jpg");
                    imagelink = "images/" + Label3.Text + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Label4.Text = "Kindly Upload JPEG Format Image Only";
                }

            }

            else
            {
                Label4.Text = "You have not selected any file - Browse and Select File First";
            }

            return imagesaved;

        }
        public void getproductid()
        {
            String mycon = "Data Source=SE130721;Initial Catalog=HaritiShopping;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select productid from ProductDetail";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                Label3.Text = "1001";
            }
            else
            {
                String mycon1 = "Data Source=SE130721;Initial Catalog=HaritiShopping;Integrated Security=True";
                SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select max(productid) from productdetail";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                Label3.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt16(Label3.Text);
                a = a + 1;
                Label3.Text = a.ToString();
                scon1.Close();
            }

        }


        SqlConnection con = new SqlConnection(@"Data Source=SE130721;Initial Catalog=HaritiShopping;Integrated Security=True");
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                DataList1.EditItemIndex = e.Item.ItemIndex;
                filldata();
            } 
            else if (e.CommandName == "cancel")
            {
                DataList1.EditItemIndex = -1;
                filldata();

            }
            else if (e.CommandName == "update")
            {
                int id = Convert.ToInt32(((Label)e.Item.FindControl("Label9")).Text);
                string name = ((TextBox)e.Item.FindControl("TextBox3")).Text.Trim();
                int price = Convert.ToInt32(((TextBox)e.Item.FindControl("TextBox4")).Text.Trim());
                SqlCommand com = new SqlCommand("UPDATE ProductDetail SET ProductName = '"+ name +"', Price = "+ price+" WHERE ProductID = " + id, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                DataList1.EditItemIndex = -1;
                filldata();
            } 
            else if (e.CommandName == "delete")
            {
                int id = Convert.ToInt32(((Label)e.Item.FindControl("Label1")).Text);
                SqlCommand com = new SqlCommand("DELETE FROM ProductDetail where ProductID="+ id, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                filldata();
            }
        }
        
        public void filldata()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select ProductID, ProductName, Price FROM ProductDetail", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}