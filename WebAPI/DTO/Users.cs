using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.DTO
{
    public class Users
    {
        public string userName { get; set; }

        public string passWord { get; set; }

        public string chucNang { get; set; }

        public string trangThai { get; set; }

        public int maGioHang { get; set; }
        public Users() { }
    }
}