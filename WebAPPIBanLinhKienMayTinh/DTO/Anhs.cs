using System.Data;

namespace WebAPPIBanLinhKienMayTinh.DTO
{
    public class Anhs
    {

        public string Img { get; set; }
        public string MaAnh { get; set; }

        public string MaLinhKien { get; set; }
        public Anhs() { }

        public Anhs(DataRow item)
        {
            Img = item["img"].ToString();
            MaAnh = item["maAnh"].ToString();
            MaLinhKien = item["maLinhKien"].ToString();
        }
    }
}