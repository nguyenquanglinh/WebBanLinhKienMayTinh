using System.Collections.Generic;
using System.Linq;
using WebAPIBanlinhKien.DTO;
using WebAPIBanlinhKien.Entity;

namespace WebAPIBanlinhKien.DAO
{
    public class GioHangsDao
    {
        private Model1 model;
        public GioHangsDao()
        {
            model = new Model1();
        }
        public List<GioHangs> GetListGioHang()
        {
            var ret = new List<GioHangs>();
            foreach (var item in model.GioHangs.ToList())
            {
                ret.Add(new GioHangs(item));
            }
            return ret;
        }
        public GioHangs GetGioHangs(string id)
        {
            return new GioHangs(GetGioHang(id));
        }
        public GioHang GetGioHang(string id)
        {
            return model.GioHangs.Single(i => i.userName == id);
        }
        public List<GioHangs> AddGioHang(User admin, GioHangs lk)
        {
            if (admin.chucNang == "admin")
            {
                model.GioHangs.Add(GetGioHang(lk.username));
                model.SaveChanges();
            }
            return GetListGioHang();
        }
        public List<GioHangs> DeleteGioHang(User admin, GioHangs gh)
        {
            if (admin.chucNang == "admin")
            {
                model.GioHangs.Remove(GetGioHang(gh.username));
                model.SaveChanges();
            }
            return GetListGioHang();
        }
        public List<GioHangs> EditGioHang(User admin, GioHangs gh)
        {
            if (admin.chucNang == "admin")
            {
                //var gioiHang = GetGioHang(gh.maGioHang);
                //gioiHang.thongtin = gh.thongtin;
                //model.SaveChanges();
            }
            return GetListGioHang();
        }
    }
}
