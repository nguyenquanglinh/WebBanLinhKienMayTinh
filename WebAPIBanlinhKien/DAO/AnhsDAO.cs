using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebAPIBanlinhKien.DTO;
using WebAPIBanlinhKien.Entity;

namespace WebAPIBanlinhKien.DAO
{
    public class AnhsDAO
    {
        private Model1 model;

        public AnhsDAO()
        {
            model = new Model1();
        }
        public List<Anhs> GetListAnh(int id)
        {
            var ret = new List<Anhs>();
            foreach (var item in model.Anhs.ToList())
            {
                if (item.maLinhKien == id)
                    ret.Add(new Anhs(item));
            }
            return ret;
        }
        public Anh GetAnh(int id)
        {
            return model.Anhs.Single(i => i.maLinhKien == id);
        }
        public List<Anhs> AddLinhKien(User admin, Anhs lk)
        {
            if (admin.chucNang == "admin")
            {
                var anh = new Anh();
                anh.maLinhKien = lk.maLinhKien;
                anh.img = lk.Img;
                model.Anhs.Add(anh);
                model.SaveChanges();
            }
            return GetListAnh(lk.maLinhKien);
        }
        public List<Anhs> EditAnh(User admin, Anhs lk)
        {
            if (admin.chucNang == "admin")
            {
                var anh = GetAnh(lk.maLinhKien);
                anh.maAnh = lk.MaAnh;
                anh.maLinhKien = lk.maLinhKien;
                anh.img = lk.Img;
                model.SaveChanges();
            }
            return GetListAnh(lk.maLinhKien);
        }
        public List<Anhs> DeleteAnh(User admin, LinhKien lk)
        {
            if (admin.chucNang == "admin")
            {
                model.Anhs.Remove(GetAnh(lk.maLinhKien));
                model.SaveChanges();
            }
            return GetListAnh(lk.maLinhKien);
        }
    }
}