using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WatchStore.Class
{
    public class Xuly
    {
        SqlConnection con;
        private void layknoi()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\C#\WatchStore\WatchStore\App_Data\DataWatch.mdf;Integrated Security=True");
            con.Open();
        }
        private void dongketnoi()
        {
            if (con.State == ConnectionState.Open) con.Close();
        }
        //tạo hàm lấy dữ liêu có kiểu dữ liêu là DataTable, giá trị truyền vào là 1 chuỗi sql  public DataTable laydata(string sql) 
        public DataTable laydata(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                layknoi();//mở kết nối 
                SqlDataAdapter adap = new SqlDataAdapter(sql, con);
                adap.Fill(dt);//đổ dữ liệu vào dt 
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
        public int them(string sql)
        {
            int kq = 0;
            try
            {
                layknoi();
                SqlCommand cmd = new SqlCommand(sql, con);
                kq = cmd.ExecuteNonQuery();
            } 
             catch
            {
                kq = 0;
            }
            finally
            {
                dongketnoi();
            }
            return kq;
        }


    }
}