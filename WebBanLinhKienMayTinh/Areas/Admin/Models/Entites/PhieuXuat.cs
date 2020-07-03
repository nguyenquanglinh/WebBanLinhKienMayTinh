namespace WebBanLinhKienMayTinh.Areas.Admin.Models.Entites
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PhieuXuat")]
    public partial class PhieuXuat
    {
        [Key]
        public int maPhieuXuat { get; set; }

        public int? maLinhKien { get; set; }

        public int? soLuong { get; set; }

        public double? donGia { get; set; }

        public double? tongTien { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngayThang { get; set; }

        public virtual LinhKien LinhKien { get; set; }
    }
}
