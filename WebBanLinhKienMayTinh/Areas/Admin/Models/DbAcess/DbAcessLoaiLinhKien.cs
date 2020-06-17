using System.Collections.Generic;
using System.Linq;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessLoaiLinhKien
    {
        public BanLinhKienMayTinh Db { get; private set; }

        public DbAcessLoaiLinhKien()
        {
            this.Db = new BanLinhKienMayTinh();
        }
        public List<LoaiLinhKien> ListCate()
        {
            return Db.LoaiLinhKiens.ToList();
        }
        public LoaiLinhKien getById(int id)
        {
            return Db.LoaiLinhKiens.Single(i => i.maLoai == id);
        }
    }
}