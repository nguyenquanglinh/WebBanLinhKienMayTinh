using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebAPIBanlinhKien.DAO;
using WebAPIBanlinhKien.Entity;

namespace WebAPIBanlinhKien.DTO
{
    public class Anhs
    {
        public string Img { get; set; }
        public int MaAnh { get; set; }

        public int maLinhKien { get; set; }
        public Anhs() { }

        public Anhs(Anh item)
        {
            Img = item.img;
            MaAnh = item.maAnh;
            maLinhKien = item.maLinhKien;
        }
    }
    public class ChiTietDonHangs
    {
        public int maDonHang { get; set; }
        public int maLinhKien { get; set; }

        public int soLuong { get; set; }

        public double donGia { get; set; }

        public DateTime ngayThang { get; set; }

        public string donVi { get; set; }

        public double tongTien { get; set; }
        public ChiTietDonHangs() { }
    }
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
    public class ChiTietPhieuXuats
    {
        public int maPhieuXuat { get; set; }
        public int maLinhKien { get; set; }
        public int soLuong { get; set; }
        public double donGia { get; set; }
        public double donVi { get; set; }
        public DateTime ngayThang { get; set; }
        public double tongTien { get; set; }
        public ChiTietPhieuXuats() { }
    }
    public class DonHangs
    {
        public int maDonHang { get; set; }

        public string trangThai { get; set; }

        public int maGioHang { get; set; }
        public DonHangs() { }

    }
    public class GioHangs
    {
        public string thongtin { get; set; }

        public int maGioHang { get; set; }
        public string username { get; set; }
        public GioHangs() { }

        public GioHangs(GioHang item)
        {
            maGioHang = item.maGioHang;
            username = item.userName;
            thongtin = item.thongtin;
        }
    }
    public class LinhKiens
    {

        public List<Anhs> GetListAnh()
        {

            return new AnhsDAO().GetListAnh(MaLinhKien);
        }
        public int MaLinhKien { get; set; }
        public int? MaLoaiLinhKien { get; set; }
        public int? MaNhaCungCap { get; set; }
        public int? MaLoaiMay { get; set; }
        public string TenLinhKien { get; set; }
        public string ThongSoKyThuat { get; set; }
        public string MoTa { get; set; }
        public double? GiaBan { get; set; }
        public string ThoiGianBaoHanh { get; set; }
        public LinhKiens() { }

        public LinhKiens(LinhKien item)
        {
            MaLinhKien = item.maLinhKien;
            MaLoaiLinhKien = item.maLoaiMay;
            MaNhaCungCap = item.maNhaCungCap;
            MaLoaiMay = item.maLoaiMay;
            TenLinhKien = item.tenLinhKien;
            ThongSoKyThuat = item.thongSoKyThuat;
            MoTa = item.moTa;
            GiaBan = item.giaBan;
            ThoiGianBaoHanh = item.thoiGianBaoHanh;
        }
    }
    public class LoaiLinhKiens
    {
        public int maLoai { get; set; }

        public string tenLoai { get; set; }
        public LoaiLinhKiens() { }

    }
    public class LoaiMays
    {
        public int maLoaiMay { get; set; }
        public string tenLoaiMay { get; set; }
        public LoaiMays() { }

    }
    public class NhaCungCaps
    {
        public int maNCC { get; set; }
        public string tenNhaCungCap { get; set; }
        public NhaCungCaps() { }

    }
    public class PhieuNhaps
    {
        public int maPhieuNhap { get; set; }
        public double tongTien { get; set; }
        public DateTime ngayThang { get; set; }
        public PhieuNhaps() { }

    }
    public class PhieuXuat
    {
        public int maPhieuXuat { get; set; }

        public double tongTien { get; set; }

        public DateTime ngayThang { get; set; }
        public PhieuXuat() { }

    }
    public class Users
    {

        public string userName { get; set; }

        public string passWord { get; set; }

        public string chucNang { get; set; }

        public string trangThai { get; set; }

        public int maGioHang { get; set; }
        public Users() { }

        public Users(User item)
        {
            userName = item.userName;
            passWord = item.passWord;
            chucNang = item.chucNang;
            trangThai = item.trangThai;
        }
    }
}