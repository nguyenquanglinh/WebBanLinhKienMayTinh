namespace WebAPIBanlinhKien.Entity
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
            Anhs = new HashSet<Anh>();
            ChiTietDonHangs = new HashSet<ChiTietDonHang>();
            ChiTietPhieuNhaps = new HashSet<ChiTietPhieuNhap>();
            ChiTietPhieuXuats = new HashSet<ChiTietPhieuXuat>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
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

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Anh> Anhs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietPhieuNhap> ChiTietPhieuNhaps { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietPhieuXuat> ChiTietPhieuXuats { get; set; }

        public virtual LoaiLinhKien LoaiLinhKien { get; set; }

        public virtual LoaiMay LoaiMay { get; set; }

        public virtual NhaCC NhaCC { get; set; }
    }
}
