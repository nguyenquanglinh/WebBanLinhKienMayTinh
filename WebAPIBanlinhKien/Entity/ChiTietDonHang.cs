namespace WebAPIBanlinhKien.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietDonHang")]
    public partial class ChiTietDonHang
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int maDonHang { get; set; }

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

        public virtual DonHang DonHang { get; set; }

        public virtual LinhKien LinhKien { get; set; }
    }
}
