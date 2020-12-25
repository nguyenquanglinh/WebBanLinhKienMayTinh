using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebAPI.Entity;

namespace WebAPI.DTO
{
    public class LinhKiens:LinhKien
    {

        public int MaLinhKien { get; set; }
        public int? MaLoaiLinhKien { get; set; }
        public int? MaNhaCungCap { get; set; }
        public int? MaLoaiMay { get; set; }
        public string TenLinhKien { get; set; }
        public string ThongSoKyThuat { get; set; }
        public string MoTa { get; set; }
        public double? GiaBan { get; set; }
        public string ThoiGianBaoHanh { get; set; }
        public LinhKiens() { }

        public LinhKiens(LinhKien item)
        {
            MaLinhKien = item.maLinhKien;
            MaLoaiLinhKien=item.maLoaiMay;
            MaNhaCungCap=item.maNhaCungCap;
            MaLoaiMay=item.maLoaiMay;
            TenLinhKien=item.tenLinhKien;
            ThongSoKyThuat=item.thongSoKyThuat;
            MoTa=item.moTa;
            GiaBan=item.giaBan;
            ThoiGianBaoHanh = item.thoiGianBaoHanh;


        }
    }
}