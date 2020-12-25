using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPPIBanLinhKienMayTinh.DTO
{
    public class Users
    {

        public string UserName { get; set; }

        public string PassWord { get; set; }

        public string ChucNang { get; set; }

        public string TrangThai { get; set; }

        public int MaGioHang { get; set; }
        public Users() { }
    }
}