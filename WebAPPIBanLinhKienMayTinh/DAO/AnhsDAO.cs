using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebAPPIBanLinhKienMayTinh.DTO;

namespace WebAPPIBanLinhKienMayTinh.DAO
{
    public class AnhsDAO
    {
        private AnhsDAO() { }

        private static volatile AnhsDAO instance;

        static object key = new object();

        public static AnhsDAO Instance
        {
            get
            {
                lock (key)
                {
                    if (instance == null)
                    {
                        instance = new AnhsDAO();
                    }
                }

                return instance;
            }

            private set
            {
                instance = value;
            }
        }
        public List<Anhs> GetListAnhs(string id=null)
        {

            List<Anhs> list = new List<Anhs>();
            DataTable data;
            if (id==null)
             data = DataProvider.Instance.ExecuteQuery("SELECT * FROM Anh");
            else
                data = DataProvider.Instance.ExecuteQuery("SELECT * FROM Anh where maLinhKien="+id);
            foreach (DataRow item in data.Rows)
            {
                Anhs obj = new Anhs(item);
                list.Add(obj);
            }
            return list;
        }
    }
}