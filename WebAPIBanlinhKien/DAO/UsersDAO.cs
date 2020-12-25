using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebAPIBanlinhKien.DTO;
using WebAPIBanlinhKien.Entity;

namespace WebAPIBanlinhKien.DAO
{
    public class UsersDAO
    {

        private Model1 model;

        public UsersDAO()
        {
            model = new Model1();
        }
        public List<Users> GetListUser()
        {
            var ret = new List<Users>();
            foreach (var item in model.Users.ToList())
            {
                ret.Add(new Users(item));
            }
            return ret;
        }
        public Users GetUsers(string id)
        {
            return new Users(GetUser(id));
        }
        public User GetUser(string id)
        {
            return model.Users.Single(i => i.userName == id);
        }
        public List<Users> AddUser(Users admin, Users us)
        {
            if (admin.chucNang == "admin")
            {
                var user = new User();
                user.userName = us.userName;
                user.passWord = us.passWord;
                user.trangThai = us.trangThai;
                user.chucNang = us.chucNang;
                model.Users.Add(user);
                model.SaveChanges();
            }
            return GetListUser();
        }
        public List<Users> EditUser(User admin, Users us)
        {
            if (admin.chucNang == "admin")
            {
                var user_ = GetUser(us.userName);
                user_.passWord = us.passWord;
                user_.trangThai = us.trangThai;
                model.SaveChanges();
            }
            return GetListUser();
        }
        public List<Users> DeleteLinhKien(User admin, User us)
        {
            if (admin.chucNang == "admin")
            {
                model.Users.Remove(GetUser(us.userName));
                model.SaveChanges();
            }
            return GetListUser();
        }
    }
}
