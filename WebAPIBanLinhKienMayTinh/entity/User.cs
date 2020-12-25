namespace WebAPIBanLinhKienMayTinh.entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(50)]
        public string userName { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string passWord { get; set; }

        [StringLength(50)]
        public string chucNang { get; set; }

        [StringLength(50)]
        public string trangThai { get; set; }

        public int? maGioHang { get; set; }

        public virtual GioHang GioHang { get; set; }
    }
}
