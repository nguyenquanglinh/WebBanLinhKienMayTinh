using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessNhaCC
    {
        public DbBanLinhKienMayTinh Db { get; private set; }

        public DbAcessNhaCC()
        {
            this.Db = new DbBanLinhKienMayTinh();
        }
        public List<NhaCC> ListCate()
        {
            return Db.NhaCCs.ToList();
        }
        public NhaCC getById(int id)
        {
            return Db.NhaCCs.Single(i => i.maNCC == id);
        }
    }
}