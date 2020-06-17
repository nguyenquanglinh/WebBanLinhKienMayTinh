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
        [Key]
        public int maLinhKien { get; set; }

        public int? maLoaiLinhKien { get; set; }

        public int? maNhaCungCap { get; set; }

        public int? maLoaiMay { get; set; }

        [StringLength(50)]
        public string tenLinhKien { get; set; }

        [StringLength(50)]
        public string thongSoKyThuat { get; set; }

        [StringLength(50)]
        public string moTa { get; set; }

        public double? giaBan { get; set; }

        [StringLength(50)]
        public string thoiGianBaoHanh { get; set; }

        [StringLength(50)]
        public string img { get; set; }

        public virtual LoaiLinhKien LoaiLinhKien { get; set; }

        public virtual LoaiMay LoaiMay { get; set; }

        public virtual NhaCC NhaCC { get; set; }
    }
}
