namespace WebAPIBanlinhKien.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietPhieuXuat")]
    public partial class ChiTietPhieuXuat
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int maPhieuXuat { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int maLinhKien { get; set; }

        public int? soLuong { get; set; }

        public double? donGia { get; set; }

        public double? donVi { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngayThang { get; set; }

        public double? tongTien { get; set; }

        public virtual LinhKien LinhKien { get; set; }

        public virtual PhieuXuat PhieuXuat { get; set; }
    }
}
