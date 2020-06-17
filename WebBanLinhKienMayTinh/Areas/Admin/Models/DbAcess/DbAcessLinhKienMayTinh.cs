using System.Collections.Generic;
using System.Linq;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;
using PagedList;
namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessLinhKienMayTinh
    {
        public DbAcessLinhKienMayTinh()
        {
            this.Db = new BanLinhKienMayTinh();
        }

        public BanLinhKienMayTinh Db { get; private set; }
        public List<LinhKien> ListProduct()
        {
            return Db.LinhKiens.ToList();
        }
        public void Add(LinhKien pro)
        {
            Db.LinhKiens.Add(pro);
            Db.SaveChanges();
        }
        public void Edit(LinhKien pro)
        {
            LinhKien product = getById(pro.maLinhKien);
            if (product != null)
            {
                product.tenLinhKien = pro.tenLinhKien;
                product.maLoaiLinhKien = pro.maLoaiLinhKien;
                product.img = pro.img;
                product.giaBan = pro.giaBan;
                product.maNhaCungCap = pro.maNhaCungCap;
                product.maLoaiMay = pro.maLoaiMay;
                product.thongSoKyThuat = pro.thongSoKyThuat;
                product.moTa = pro.moTa;
                product.thoiGianBaoHanh = pro.thoiGianBaoHanh;
                Db.SaveChanges();
            }


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



        public LinhKien getById(int id)
        {
            return Db.LinhKiens.Single(i => i.maLinhKien== id);
        }

        public List<LinhKien> ListProduct(int Pagenum, int PageSize)
        {
            return Db.LinhKiens.Skip((Pagenum - 1) * PageSize).Take(PageSize).ToList();
        }




        public IEnumerable<LinhKien> ListProductPage(int Pagenum, int PageSize)
        {

            return Db.LinhKiens.OrderByDescending(a => a.maLinhKien).ToPagedList(Pagenum, PageSize);
        }

    }
}