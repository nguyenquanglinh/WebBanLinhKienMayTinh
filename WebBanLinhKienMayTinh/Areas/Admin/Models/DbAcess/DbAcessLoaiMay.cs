using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessLoaiMay
    {
        public BanLinhKienMayTinh Db { get; private set; }

        public DbAcessLoaiMay()
        {
            this.Db = new BanLinhKienMayTinh();
        }
        public List<LoaiMay> ListCate()
        {
            return Db.LoaiMays.ToList();
        }
        public LoaiMay getById(int id)
        {
            return Db.LoaiMays.Single(i => i.maLoaiMay == id);
        }
    }
}