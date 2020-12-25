using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebAPPIBanLinhKienMayTinh.DTO;

namespace WebAPPIBanLinhKienMayTinh.DAO
{
    public class LoaiMaysDAO
    {
        private LoaiMaysDAO() { }

        private static volatile LoaiMaysDAO instance;

        static object key = new object();

        public static LoaiMaysDAO Instance
        {
            get
            {
                lock (key)
                {
                    if (instance == null)
                    {
                        instance = new LoaiMaysDAO();
                    }
                }

                return instance;
            }

            private set
            {
                instance = value;
            }
        }
        public List<LoaiMays> GetListLinhKiens()
        {
            List<LoaiMays> list = new List<LoaiMays>();
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM LoaiMay");
            foreach (DataRow item in data.Rows)
            {
                LoaiMays obj = new LoaiMays(item);
                list.Add(obj);
            }
            return list;
        }
    }
}