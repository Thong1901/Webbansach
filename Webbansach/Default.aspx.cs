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
        SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["Websach"].ConnectionString);
        int BookID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["GioHang"] != null)
                {
                    DBClass.tbGioHang = Session["GioHang"] as DataTable;
                }
                else
                {
                    DBClass.tbGioHang.Rows.Clear();
                    DBClass.tbGioHang.Columns.Clear();
                    DBClass.tbGioHang.Columns.Add("BookID", typeof(int));
                    DBClass.tbGioHang.Columns.Add("Tieude", typeof(string));
                    DBClass.tbGioHang.Columns.Add("Tacgia", typeof(string));
                    DBClass.tbGioHang.Columns.Add("Giaban", typeof(decimal));
                    DBClass.tbGioHang.Columns.Add("Soluong", typeof(int));
                    DBClass.tbGioHang.Columns.Add("img", typeof(string));
                    DBClass.tbGioHang.Columns.Add("TongTien", typeof(decimal), "SoLuong * Giaban");
                }
                lbGiohang.Text = "Giỏ hàng (" + DBClass.tbGioHang.Rows.Count + ")";
                DoGridView();
            }
        }
        private void DoGridView()
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

        
        protected void gvBang_sach_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "XemSanpham")
            
        }


        private void LoadGridViewData()
        {
            try
            {
                 if (myCon.State == ConnectionState.Open)
        {
            myCon.Close(); 
        }
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
            catch (Exception ex)
            {
                lblMessage.Text = "Lỗi khi tải dữ liệu: " + ex.Message;
            }
            finally
            {
                myCon.Close();
            }
        }  
        protected void lbGiohang_Click(object sender, EventArgs e)
        {
            Response.Redirect("Giohang.aspx");
        }

        protected void gvBang_sach_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}