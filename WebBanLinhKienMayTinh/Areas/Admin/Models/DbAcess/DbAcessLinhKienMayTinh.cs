using System.Collections.Generic;
using System.Linq;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;
using PagedList;
using System.Data;
using System;

namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessLinhKienMayTinh
    {
        public DbAcessLinhKienMayTinh()
        {
            Db = new DbBanLinhKienMayTinh();
        }

        internal dynamic GetLinhKienMoi()
        {
            return Db.Database.SqlQuery<LinhKien>("select DISTINCT top(8)LinhKien.maLinhKien,maLoaiLinhKien,maNhaCungCap,maLoaiMay,tenLinhKien,thongSoKyThuat,moTa,giaBan,thoiGianBaoHanh,img from PhieuNhap, LinhKien where PhieuNhap.maLinhKien = LinhKien.maLinhKien ").ToList();
        }

        public DbBanLinhKienMayTinh Db { get; private set; }
        public List<LinhKien> ListProduct()
        {
            return Db.LinhKiens.ToList();
        }
        public void Add(LinhKien pro)
        {
            Db.LinhKiens.Add(pro);
            Db.SaveChanges();
        }
        public void Edit(int id, string MLLK, string MLM, string MNCC, string TLK,
            string TSKT, string TGBH, string MT, string img = "")
        {
            var product = GetById(id);
            product.maLoaiLinhKien = int.Parse(MLLK);
            product.maLoaiMay = int.Parse(MLM);
            product.tenLinhKien = TLK;
            product.thoiGianBaoHanh = TGBH;
            product.moTa = MT;
            product.thongSoKyThuat = TSKT;
            product.maNhaCungCap = int.Parse(MNCC);
            if (img != "")
            {
                product.img = img;
            }
            Db.SaveChanges();
        }
        public int Delete(int id)
        {
            LinhKien pro = Db.LinhKiens.Find(id);
            if (pro != null)
            {
                Db.LinhKiens.Remove(pro);
                return Db.SaveChanges();
            }
            else
                return -1;
        }

        public LinhKien GetById(int id)
        {
            return Db.LinhKiens.Single(i => i.maLinhKien == id);
        }

        public List<LinhKien> ListProduct(int Pagenum, int PageSize)
        {
            return Db.LinhKiens.Skip((Pagenum - 1) * PageSize).Take(PageSize).ToList();
        }
        public List<LinhKien> ListCate()
        {
            return Db.LinhKiens.ToList();
        }

        public List<LinhKien> GetLinhKienBanChay()
        {
           return Db.Database.SqlQuery<LinhKien>("select LinhKien.maLinhKien,maLoaiLinhKien,maNhaCungCap,maLoaiMay,tenLinhKien,thongSoKyThuat,moTa,giaBan,thoiGianBaoHanh from LinhKien, (select top(8)  count(ChiTietPhieuXuat.maPhieuXuat) as stt, ChiTietPhieuXuat.maLinhKien from ChiTietPhieuXuat, LinhKien where ChiTietPhieuXuat.maLinhKien = LinhKien.maLinhKien   group by  ChiTietPhieuXuat.maLinhKien order by count(ChiTietPhieuXuat.maPhieuXuat) desc) as s   where LinhKien.maLinhKien = s.maLinhKien").ToList();
        }

        public IEnumerable<LinhKien> ListProductPageLinhKien(int Pagenum, int PageSize, int loai)
        {
            if (loai == 0)
                return Db.LinhKiens.OrderByDescending(a => a.maLinhKien).ToPagedList(Pagenum, PageSize);
            else
                return Db.Database.SqlQuery<LinhKien>("select * from LinhKien where maLoaiMay= "+loai).ToPagedList(Pagenum, PageSize);
        }

        public IEnumerable<User> ListProductPageAccount(int pageNum, int pageSize)
        {
            return Db.Users.OrderByDescending(a => a.userName).ToPagedList(pageNum, pageSize);
        }
        public IEnumerable<PhieuNhap> ListProductPagePhieuNhap(int pageNum, int pageSize)
        {
            return Db.PhieuNhaps.OrderByDescending(a => a.maPhieuNhap).ToPagedList(pageNum, pageSize);
        }
        public IEnumerable<PhieuXuat> ListProductPagePhieuXuat(int pageNum, int pageSize)
        {
            return Db.PhieuXuats.OrderByDescending(a => a.maPhieuXuat).ToPagedList(pageNum, pageSize);
        }
    }
}