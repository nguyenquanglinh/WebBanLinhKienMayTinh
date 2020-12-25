namespace WebAPIBanLinhKienMayTinh.entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietPhieuNhap")]
    public partial class ChiTietPhieuNhap
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int maPhieuNhap { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int maLinhKien { get; set; }

        public int? soLuong { get; set; }

        public double? donGia { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngayThang { get; set; }

        [StringLength(50)]
        public string donVi { get; set; }

        public double? tongTien { get; set; }

        public virtual LinhKien LinhKien { get; set; }

        public virtual PhieuNhap PhieuNhap { get; set; }
    }
}
