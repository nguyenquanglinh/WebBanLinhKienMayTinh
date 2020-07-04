using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessPhieuXuat
    {
        public DbAcessPhieuXuat()
        {
            this.Db = new DbBanLinhKienMayTinh();
        }
        public PhieuXuat GetById(int id)
        {
            try
            {
                return Db.PhieuXuats.Single(i => i.maPhieuXuat == id);

            }
            catch
            {
                return null;
            }
        }

        public DbBanLinhKienMayTinh Db { get; private set; }



        public void AddPhieuXuat(PhieuXuat product)
        {
            Db.PhieuXuats.Add(product);
            Db.SaveChanges();
        }

        public List<PhieuXuat> ListCate()
        {
            return Db.PhieuXuats.ToList();
        }


        internal void Edit(int MLK, string SL, string DG, string TT, int id)
        {
            try
            {
                var product = GetById(id);
                if (!string.IsNullOrEmpty(SL))
                    product.soLuong = int.Parse(SL);
                if (!string.IsNullOrEmpty(DG))
                    product.donGia = int.Parse(DG);
                if (!string.IsNullOrEmpty(TT))
                    product.tongTien = int.Parse(TT);
            }
            catch
            {

            }
            Db.SaveChanges();
        }

        internal void Delete(int id)
        {
            PhieuXuat pro = GetById(id);
            if (pro != null)
            {
                Db.PhieuXuats.Remove(pro);
                Db.SaveChanges();
            }

        }
    }
}