using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webbansach
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    myCon.Open();
                    using (SqlCommand myCom = new SqlCommand("dbo.Sanpham", myCon))
                    {
                        myCom.Connection = myCon;
                        myCom.CommandType = CommandType.StoredProcedure;
                        SqlDataReader mydr = myCom.ExecuteReader();
                        gvBang_sach.DataSource = mydr;
                        gvBang_sach.DataBind();
                        mydr.Close();
                    }
                }
                catch (Exception ex) { lblMessage.Text = "Error in Companies doGridView: " + ex.Message; } 
                finally { myCon.Close(); }  
            }
        }

        protected void gvBang_sach_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
        protected void gvBang_sach_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}