using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPPIBanLinhKienMayTinh.DTO
{
    public class ChiTietPhieuNhaps
    {
        public string MaPhieuNhap { get; set; }
        public string MaLinhKien { get; set; }
        public string SoLuong { get; set; }
        public string DonGia { get; set; }
        public string NgayThang { get; set; }
        public string DonVi { get; set; }
        public string TongTien { get; set; }
        public ChiTietPhieuNhaps() { }
    }
}