using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebAPPIBanLinhKienMayTinh.DTO;

namespace WebAPPIBanLinhKienMayTinh.DAO
{
    public class ChiTietDonHangsDAO
    {
        private ChiTietDonHangsDAO() { }

        private static volatile ChiTietDonHangsDAO instance;

        static object key = new object();

        public static ChiTietDonHangsDAO Instance
        {
            get
            {
                lock (key)
                {
                    if (instance == null)
                    {
                        instance = new ChiTietDonHangsDAO();
                    }
                }

                return instance;
            }

            private set
            {
                instance = value;
            }
        }
        public List<ChiTietDonHangs> GetListChiTietDonHangs(string maLinhKien = null)
        {
            List<ChiTietDonHangs> list = new List<ChiTietDonHangs>();
            DataTable data;
            if (maLinhKien == null)
                data = DataProvider.Instance.ExecuteQuery("SELECT * FROM ChiTietDonHang");
            else
                data = DataProvider.Instance.ExecuteQuery("SELECT * FROM ChiTietDonHang where maLinhKien=" + maLinhKien);

            foreach (DataRow item in data.Rows)
            {
                ChiTietDonHangs obj = new ChiTietDonHangs(item);
                list.Add(obj);
            }
            return list;
        }
    }
}