using System.Data;

namespace WebAPPIBanLinhKienMayTinh.DTO
{
    public class LoaiMays
    {
        private DataRow item;

        public string MaLoaiMay { get; set; }
        public string TenLoaiMay { get; set; }
        public LoaiMays() { }

        public LoaiMays(DataRow item)
        {
            MaLoaiMay = item["maLoaiMay"].ToString();
            TenLoaiMay = item["tenLoaiMay"].ToString();
        }
    }
}