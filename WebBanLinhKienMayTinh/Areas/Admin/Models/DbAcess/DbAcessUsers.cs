using System;
using System.Collections.Generic;
using System.Linq;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessUsers
    {
        public DbAcessUsers()
        {
            this.Db = new DbBanLinhKienMayTinh();
        }
        public User GetByUP(string usname, string pass)
        {
            try
            {
                return Db.Users.Single(i => i.userName == usname && i.passWord == pass);

            }
            catch
            {
                return null;
            }
        }

        public DbBanLinhKienMayTinh Db { get; private set; }

        public bool CheckLogin(string username, string password)
        {
            if (GetByUP(username, password) == null) return false;
            return true;
        }

        public void AddUser(User product)
        {
            Db.Users.Add(product);
            Db.SaveChanges();
        }

        public User GetByMaGH(int maGioHang)
        {
            try
            {
                return Db.Users.Single(i => i.maGioHang == maGioHang);
            }
            catch
            {
                return null;
            }
        }

        public List<User> ListCate()
        {
            return Db.Users.ToList();
        }

        internal void Edit(string userName, string passWord, string chucNang, string trangThai, int id)
        {
            var us = GetByMaGH(id);
            us.userName = userName;
            us.passWord = passWord;
            us.trangThai = trangThai;
            us.chucNang = chucNang;
            Db.SaveChanges();
        }

        internal void Delete(int id)
        {
            User pro = GetByMaGH(id);
            if (pro != null)
            {
                Db.Users.Remove(pro);
                Db.SaveChanges();
            }

        }
    }
}