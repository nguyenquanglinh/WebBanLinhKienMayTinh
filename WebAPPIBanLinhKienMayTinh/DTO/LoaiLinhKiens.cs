using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace WebAPPIBanLinhKienMayTinh.DTO
{
    public class LoaiLinhKiens
    {

        public string MaLoai { get; set; }

        public string TenLoai { get; set; }
        public LoaiLinhKiens() { }

        public LoaiLinhKiens(DataRow item)
        {
            MaLoai = item["maLoai"].ToString();
            TenLoai = item["tenLoai"].ToString();
        }
    }
}