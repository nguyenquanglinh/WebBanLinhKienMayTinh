using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.DTO
{
    public class PhieuNhaps
    {
        public int maPhieuNhap { get; set; }
        public double tongTien { get; set; }
        public DateTime ngayThang { get; set; }
        public PhieuNhaps() { }

    }
}