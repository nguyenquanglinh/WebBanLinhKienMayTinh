﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.DTO
{
    public class ChiTietPhieuNhaps
    {
        public int maPhieuNhap { get; set; }
        public int maLinhKien { get; set; }
        public int soLuong { get; set; }
        public double donGia { get; set; }
        public DateTime ngayThang { get; set; }
        public string donVi { get; set; }
        public double tongTien { get; set; }
        public ChiTietPhieuNhaps() { }
    }
}