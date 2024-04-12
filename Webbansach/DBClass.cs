using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Webbansach
{
    public class DBClass
    {
        public static DataTable tbGioHang = new DataTable();
        public static SqlConnection OpenConn()
        {
            SqlConnection myCon = new SqlConnection(ConfigurationManager.ConnectionStrings["Websach"].ConnectionString);
            myCon.Open();
            return myCon;
        }
    }
}