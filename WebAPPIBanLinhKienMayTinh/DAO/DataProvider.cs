using System;
using System.Data;
using System.Data.SqlClient;


namespace WebAPPIBanLinhKienMayTinh.DAO
{
    public class DataProvider
    {

        private static volatile DataProvider instance;
        private static volatile SqlConnection connection;
        private DataProvider() { }
        private static string str = @"Data Source=DESKTOP-1DLVE1Q\SQLEXPRESS;Initial Catalog=BanLinhKienMayTinh;Integrated Security=True";
        static object key = new object();
        public static DataProvider Instance
        {
            get
            {
                lock (key)
                {
                    if (instance == null)
                    {
                        instance = new DataProvider();
                    }
                    if (connection == null)
                    {
                        connection = new SqlConnection(str);
                    }
                }
                return instance;
            }

        }

        // viết lại cái query xử lý thông qua provider
        public DataTable ExecuteQuery(string query, Object[] parameter = null)
        {
            DataTable data = new DataTable("data");
            SqlCommand command = new SqlCommand(query, connection);
            // xử lý nâng cao parameter là sử lý chuỗi thêm vào
            if (parameter != null)// nghĩa là có tham số truyền vào
            {
                string[] listPara = query.Split(' ');
                int n = 0;
                foreach (var item in listPara)
                {
                    if (item.Contains("@"))
                    {
                        command.Parameters.AddWithValue(item, parameter[n]);
                        n++;
                    }
                }
            }

            // trung gian qua một cái sqldataAdapter
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            adapter.Fill(data);
            return data;
        }

        public int ExecuteNonQuery(string query, Object[] parameter = null)// số dòng thành công
        {
            int data = 0;
            connection.Open();
            SqlCommand command = new SqlCommand(query, connection);
            // xử lý nâng cao parameter là sử lý chuỗi thêm vào

            if (parameter != null)// nghĩa là có tham số truyền vào
            {
                string[] listPara = query.Split(' ');
                int n = 0;
                foreach (var item in listPara)
                {
                    if (item.Contains("@"))
                    {

                        command.Parameters.AddWithValue(item, parameter[n]);
                        n++;

                    }
                }
            }
            data = command.ExecuteNonQuery();
            return data;
        }

        public object ExecuteScalar(string query, Object[] parameter = null)
        {
            object data = 0;
            SqlCommand command = new SqlCommand(query, connection);
            // xử lý nâng cao parameter là sử lý chuỗi thêm vào

            if (parameter != null)// nghĩa là có tham số truyền vào
            {
                string[] listPara = query.Split(' ');
                int n = 0;
                foreach (var item in listPara)
                {
                    if (item.Contains("@"))
                    {
                        command.Parameters.AddWithValue(item, parameter[n]);
                        n++;
                    }
                }
            }
            // trung gian qua một cái sqldataAdapter
            data = command.ExecuteScalar();
            return data;
        }
    }
}