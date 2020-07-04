using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessPhieuNhap
    {
        public DbAcessPhieuNhap()
        {
            this.Db = new DbBanLinhKienMayTinh();
        }
        public PhieuNhap GetById(int id)
        {
            try
            {
                return Db.PhieuNhaps.Single(i => i.maPhieuNhap == id);

            }
            catch
            {
                return null;
            }
        }

        public DbBanLinhKienMayTinh Db { get; private set; }

         

        public void AddPhieuNhap(PhieuNhap product)
        {
            Db.PhieuNhaps.Add(product);
            Db.SaveChanges();
        }

        public List<PhieuNhap> ListCate()
        {
            return Db.PhieuNhaps.ToList();
        }


        internal void Edit(int MLK, string SL, string DG,string TT, int id)
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
            PhieuNhap pro = GetById(id);
            if (pro != null)
            {
                Db.PhieuNhaps.Remove(pro);
                Db.SaveChanges();
            }

        }
    }
}