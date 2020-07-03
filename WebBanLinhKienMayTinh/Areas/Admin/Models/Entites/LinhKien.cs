namespace WebBanLinhKienMayTinh.Areas.Admin.Models.Entites
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LinhKien")]
    public partial class LinhKien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LinhKien()
        {
            GioHangs = new HashSet<GioHang>();
            PhieuNhaps = new HashSet<PhieuNhap>();
            PhieuXuats = new HashSet<PhieuXuat>();
        }

        [Key]
        public int maLinhKien { get; set; }

        public int? maLoaiLinhKien { get; set; }

        public int? maNhaCungCap { get; set; }

        public int? maLoaiMay { get; set; }

        [StringLength(50)]
        public string tenLinhKien { get; set; }

        [StringLength(500)]
        public string thongSoKyThuat { get; set; }

        [StringLength(500)]
        public string moTa { get; set; }

        public double? giaBan { get; set; }

        [StringLength(50)]
        public string thoiGianBaoHanh { get; set; }

        [StringLength(50)]
        public string img { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<GioHang> GioHangs { get; set; }

        public virtual LoaiLinhKien LoaiLinhKien { get; set; }

        public virtual LoaiMay LoaiMay { get; set; }

        public virtual NhaCC NhaCC { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuNhap> PhieuNhaps { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuXuat> PhieuXuats { get; set; }
    }
}
