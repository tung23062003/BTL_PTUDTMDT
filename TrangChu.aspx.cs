using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_PTUDTMDT
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ecommerce;Integrated Security=True";
                SqlConnection cnn = new SqlConnection(connectString);
                cnn.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM product", connectString);
                DataSet ds = new DataSet();
                da.Fill(ds, "product");

                DataList1.DataSource = ds.Tables["product"];
                DataList1.DataBind();
                //Trong đó:
                //DataList1 là tên của DataList
                //DataList1.DataSource = ds.Tables["Products"]; 
                //Dùng để gán dữ liệu của bảng Products vào DataList1 
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}