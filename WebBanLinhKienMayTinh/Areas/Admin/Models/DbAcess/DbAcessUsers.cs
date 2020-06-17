using System.Collections.Generic;
using System.Linq;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess
{
    public class DbAcessUsers
    {
        public DbAcessUsers()
        {
            this.Db = new BanLinhKienMayTinh();
        }

        public BanLinhKienMayTinh Db { get; private set; }
        //public List<User> ListCate()
        //{
        //    return Db.Users.ToList();
        //}
        //public User getById(int id)
        //{
        //    return Db.Users.Single(i => i.id == id);
        //}
        public bool checkLogin(string username, string password)
        {
            int a = Db.Users.Where(y => y.userName == username && y.passWord == password).ToList().Count();
            if (a >= 1)
                return true;
            return false;
        }
    }
}