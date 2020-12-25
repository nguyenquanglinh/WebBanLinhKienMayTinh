using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.DTO
{
    public class DonHangs
    {
        public int maDonHang { get; set; }

        public string trangThai { get; set; }

        public int maGioHang { get; set; }
        public DonHangs() { }

    }
}