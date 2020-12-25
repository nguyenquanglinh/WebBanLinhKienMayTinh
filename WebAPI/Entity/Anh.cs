namespace WebAPI.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Anh")]
    public partial class Anh
    {
        [StringLength(50)]
        public string img { get; set; }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int maAnh { get; set; }

        public int? maLinhKien { get; set; }

        public virtual LinhKien LinhKien { get; set; }
    }
}
