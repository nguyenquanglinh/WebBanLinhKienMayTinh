namespace WebBanLinhKienMayTinh.Areas.Admin.Models.Entites
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class BanLinhKienMayTinh : DbContext
    {
        public BanLinhKienMayTinh()
            : base("name=DbAcess")
        {
        }

        public virtual DbSet<LinhKien> LinhKiens { get; set; }
        public virtual DbSet<LoaiLinhKien> LoaiLinhKiens { get; set; }
        public virtual DbSet<LoaiMay> LoaiMays { get; set; }
        public virtual DbSet<NhaCC> NhaCCs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<LoaiLinhKien>()
                .HasMany(e => e.LinhKiens)
                .WithOptional(e => e.LoaiLinhKien)
                .HasForeignKey(e => e.maLoaiLinhKien);

            modelBuilder.Entity<NhaCC>()
                .HasMany(e => e.LinhKiens)
                .WithOptional(e => e.NhaCC)
                .HasForeignKey(e => e.maNhaCungCap);
        }
    }
}
