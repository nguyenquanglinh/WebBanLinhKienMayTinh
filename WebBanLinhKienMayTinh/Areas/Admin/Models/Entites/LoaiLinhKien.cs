namespace WebBanLinhKienMayTinh.Areas.Admin.Models.Entites
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiLinhKien")]
    public partial class LoaiLinhKien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiLinhKien()
        {
            LinhKiens = new HashSet<LinhKien>();
        }

        [Key]
        public int maLoai { get; set; }

        [StringLength(50)]
        public string tenLoai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LinhKien> LinhKiens { get; set; }
    }
}
