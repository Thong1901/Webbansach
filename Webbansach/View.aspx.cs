using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webbansach
{
    public partial class View : System.Web.UI.Page
    {
        int SP_ID;
        SqlConnection myCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtTieude.Text = "";
                txtGiaban.Text = "";
                txtTacgia.Text = "";
                txtSoluong.Text = "";

                string ma = Request.QueryString["BookID"].ToString();
                SP_ID = Convert.ToInt32(ma);
                if (SP_ID > 0)
                {
                    Sanpham(SP_ID);
                }
            }
        }
        private void Sanpham(int Comp_ID)
        {
            try
            {
                myCon = DBClass.OpenConn();
                using (SqlCommand myCmd = new SqlCommand("dbo.Sanpham", myCon))
                {
                    myCmd.Connection = myCon;
                    myCmd.CommandType = CommandType.StoredProcedure;
                    myCmd.Parameters.Add("@ID", SqlDbType.Int).Value = Comp_ID;
                    SqlDataReader myDr = myCmd.ExecuteReader();

                    if (myDr.HasRows)
                    {
                        while (myDr.Read())
                        {
                            txtTieude.Text = myDr.GetValue(1).ToString();
                            txtGiaban.Text = myDr.GetValue(2).ToString();
                            txtTacgia.Text = myDr.GetValue(3).ToString();
                            txtSoluong.Text = "1";
                            lblBookID.Text = Comp_ID.ToString();
                            Image1.ImageUrl = "~/images/" + myDr.GetValue(5).ToString();
                        }
                    }
                }
            }
            catch (Exception ex) { lblMessage.Text = "Error in GetSanpham: " + ex.Message; }
            finally { myCon.Close(); }
        }
        protected void btnChonSanpham_Click(object sender, EventArgs e)
        {
            int BookID = int.Parse(lblBookID.Text);
            if (int.TryParse(txtSoluong.Text, out int SL))
            {
                if (SL == 0) SL = 1;
                string strTenSP = txtTacgia.Text;
                decimal Giaban = decimal.Parse(txtGiaban.Text);

                foreach (DataRow row in DBClass.tbGioHang.Rows)
                {//Kiem tr neu mat hang da co roi thi tang so luong len 1
                    if ((int)row["BookID"] == BookID)
                    {
                        row["SoLuong"] = (int)row["SoLuong"] + SL;
                        goto GioHang;
                    }
                }
                DBClass.tbGioHang.Rows.Add(BookID, strTenSP, Giaban, SL);
            GioHang:
                Session["GioHang"] = DBClass.tbGioHang;
                Response.Redirect("default.aspx");
            }
            else
            {
                lblMessage.Text = "Nhập sai số lượng";
            }
        }
        protected void btnClose_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
    
    }
}