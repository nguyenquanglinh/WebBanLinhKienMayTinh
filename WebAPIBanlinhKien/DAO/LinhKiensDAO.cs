using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebAPIBanlinhKien.DTO;
using WebAPIBanlinhKien.Entity;

namespace WebAPIBanlinhKien.DAO
{
    public class LinhKiensDAO
    {
        private Model1 model;

        public LinhKiensDAO()
        {
            model = new Model1();
        }
        public List<LinhKiens> GetListLinhKien()
        {
            var ret = new List<LinhKiens>();
            foreach (var item in model.LinhKiens.ToList())
            {
                ret.Add(new LinhKiens(item));
            }
            return ret;
        }
        public LinhKien GetLinhKien(int id)
        {
            return model.LinhKiens.Single(i => i.maLinhKien == id);
        }
        public List<LinhKiens> AddLinhKien(Users admin, LinhKiens lk)
        {
            if (admin.chucNang == "admin")
            {
                var linhKien = new LinhKien();
                linhKien.maLinhKien = lk.MaLinhKien;
                linhKien.maLoaiLinhKien = lk.MaLoaiLinhKien;
                linhKien.maNhaCungCap = lk.MaNhaCungCap;
                linhKien.maLoaiMay = lk.MaLoaiMay;
                linhKien.tenLinhKien = lk.TenLinhKien;
                linhKien.thongSoKyThuat = lk.ThongSoKyThuat;
                linhKien.moTa = lk.MoTa;
                linhKien.giaBan = lk.GiaBan;
                linhKien.thongSoKyThuat = lk.ThongSoKyThuat;
                linhKien.thoiGianBaoHanh = lk.ThoiGianBaoHanh;
                model.LinhKiens.Add(linhKien);
                model.SaveChanges();              
            }
            return GetListLinhKien();
        }
        public List<LinhKiens> EditLinhKien(Users admin, LinhKiens lk)
        {
            if (admin.chucNang == "admin")
            {
                var linhKien = GetLinhKien(lk.MaLinhKien);
                linhKien.maLoaiLinhKien = lk.MaLoaiLinhKien;
                linhKien.maNhaCungCap = lk.MaNhaCungCap;
                linhKien.maLoaiMay = lk.MaLoaiMay;
                linhKien.tenLinhKien = lk.TenLinhKien;
                linhKien.thongSoKyThuat = lk.ThongSoKyThuat;
                linhKien.thoiGianBaoHanh = lk.ThoiGianBaoHanh;
                linhKien.moTa = lk.MoTa;
                linhKien.giaBan = lk.GiaBan;
                model.SaveChanges();
            }
            return GetListLinhKien();
        }
        public List<LinhKiens> DeleteLinhKien(Users admin, LinhKiens lk)
        {
            if (admin.chucNang == "admin")
            {
                model.LinhKiens.Remove(GetLinhKien(lk.MaLinhKien));
                model.SaveChanges();
            }
            return GetListLinhKien();
        }
    }
}