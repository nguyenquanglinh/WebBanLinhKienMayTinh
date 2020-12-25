using System.Collections.Generic;
using System.Data;
using WebAPPIBanLinhKienMayTinh.DAO;

namespace WebAPPIBanLinhKienMayTinh.DTO
{
    public class LinhKiens
    {

       public List<Anhs> ListAnh { get; set; }
        public string MaLinhKien { get; set; }
        public string MaLoaiLinhKien { get; set; }
        public string MaNhaCungCap { get; set; }
        public string MaLoaiMay { get; set; }
        public string TenLinhKien { get; set; }
        public string ThongSoKyThuat { get; set; }
        public string MoTa { get; set; }
        public string GiaBan { get; set; }
        public string ThoiGianBaoHanh { get; set; }
        public AnhsDAO Anhs { get; private set; }
        public LinhKiens(DataRow item)
        {
            MaLinhKien = item["maLinhKien"].ToString();
            MaLoaiLinhKien = item["maLoaiLinhKien"].ToString();
            MaNhaCungCap = item["maNhaCungCap"].ToString();
            MaLoaiMay = item["maLoaiMay"].ToString();
            TenLinhKien = item["tenLinhKien"].ToString();
            ThongSoKyThuat = item["thongSoKyThuat"].ToString();
            MoTa = item["moTa"].ToString();
            GiaBan = item["giaBan"].ToString();
            ThoiGianBaoHanh = item["thoiGianBaoHanh"].ToString();
            ListAnh = AnhsDAO.Instance.GetListAnhs(MaLinhKien);
        }
        public LinhKiens()
        {
        }
    }
}