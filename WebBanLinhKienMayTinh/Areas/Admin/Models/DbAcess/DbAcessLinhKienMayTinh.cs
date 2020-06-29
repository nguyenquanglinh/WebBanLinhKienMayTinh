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
        public void Edit(int id, string MLLK, string MLM, string MNCC, string TLK,
            string TSKT, string TGBH, string MT,string img="")
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