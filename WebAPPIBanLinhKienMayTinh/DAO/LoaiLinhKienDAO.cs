using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebAPPIBanLinhKienMayTinh.DTO;

namespace WebAPPIBanLinhKienMayTinh.DAO
{
    public class LoaiLinhKienDAO
    {
        private LoaiLinhKienDAO() { }

        private static volatile LoaiLinhKienDAO instance;

        static object key = new object();

        public static LoaiLinhKienDAO Instance
        {
            get
            {
                lock (key)
                {
                    if (instance == null)
                    {
                        instance = new LoaiLinhKienDAO();
                    }
                }

                return instance;
            }

            private set
            {
                instance = value;
            }
        }
        public List<LoaiLinhKiens> GetListLinhKiens()
        {
            List<LoaiLinhKiens> list = new List<LoaiLinhKiens>();
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM LoaiLinhKien");
            foreach (DataRow item in data.Rows)
            {
                LoaiLinhKiens obj = new LoaiLinhKiens(item);
                list.Add(obj);
            }
            return list;
        }
    }
}