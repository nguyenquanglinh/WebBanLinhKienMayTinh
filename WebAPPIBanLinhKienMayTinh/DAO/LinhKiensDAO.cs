using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebAPPIBanLinhKienMayTinh.DTO;

namespace WebAPPIBanLinhKienMayTinh.DAO
{
    public class LinhKiensDAO
    {
        private LinhKiensDAO() { }

        private static volatile LinhKiensDAO instance;

        static object key = new object();

        public static LinhKiensDAO Instance
        {
            get
            {
                lock (key)
                {
                    if (instance == null)
                    {
                        instance = new LinhKiensDAO();
                    }
                }

                return instance;
            }

            private set
            {
                instance = value;
            }
        }

        internal List<LinhKiens> ListProductPageAccount(int pageNum, int pageSize)
        {
            throw new NotImplementedException();
        }

        public List<LinhKiens> GetListLinhKiens()
        {
            List<LinhKiens> list = new List<LinhKiens>();
            DataTable data = DataProvider.Instance.ExecuteQuery("SELECT * FROM LinhKien");
            foreach (DataRow item in data.Rows)
            {
                LinhKiens obj = new LinhKiens(item);
                list.Add(obj);
            }
            return list;
        }

        public List<LinhKiens> GetListLinhKiensBanChay()
        {
            List<LinhKiens> list = new List<LinhKiens>();
            DataTable data = DataProvider.Instance.ExecuteQuery("select LinhKien.maLinhKien,maLoaiLinhKien,maNhaCungCap,maLoaiMay,tenLinhKien,thongSoKyThuat,moTa,giaBan,thoiGianBaoHanh from LinhKien, (select top(8)  count(PhieuXuat.maPhieuXuat) as stt, ChiTietPhieuXuat.maLinhKien from ChiTietPhieuXuat, LinhKien,PhieuXuat where ChiTietPhieuXuat.maLinhKien = LinhKien.maLinhKien and PhieuXuat.maPhieuXuat=ChiTietPhieuXuat.maPhieuXuat   group by  ChiTietPhieuXuat.maLinhKien order by count(ChiTietPhieuXuat.maPhieuXuat) desc) as s   where LinhKien.maLinhKien = s.maLinhKien");
            foreach (DataRow item in data.Rows)
            {
                LinhKiens obj = new LinhKiens(item);
                list.Add(obj);
            }
            return list;
        }
    }
}