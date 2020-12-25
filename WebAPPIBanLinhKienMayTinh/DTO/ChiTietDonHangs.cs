using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAPPIBanLinhKienMayTinh.DTO
{
    public class ChiTietDonHangs
    {
        public string MaDonHang { get; set; }
        public string MaLinhKien { get; set; }

        public string SoLuong { get; set; }

        public string DonGia { get; set; }

        public string NgayThang { get; set; }

        public string DonVi { get; set; }

        public string TongTien { get; set; }
        public ChiTietDonHangs() { }

        public ChiTietDonHangs(DataRow item)
        {
            MaDonHang = item["maDonHang"].ToString();
            MaLinhKien = item["maLinhKien"].ToString();
            SoLuong = item["soLuong"].ToString();
            DonGia = item["donGia"].ToString();
            DonVi = item["donVi"].ToString();
            TongTien = item["tongTien"].ToString();
            NgayThang = item["ngayThang"].ToString();
        }
    }
}