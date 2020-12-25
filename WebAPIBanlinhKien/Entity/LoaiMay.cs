namespace WebAPIBanlinhKien.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiMay")]
    public partial class LoaiMay
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiMay()
        {
            LinhKiens = new HashSet<LinhKien>();
        }

        [Key]
        public int maLoaiMay { get; set; }

        [StringLength(50)]
        public string tenLoaiMay { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LinhKien> LinhKiens { get; set; }
    }
}
