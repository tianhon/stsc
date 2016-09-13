namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("store")]
    public partial class Store
    {
        public int Id { get; set; }

        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        [StringLength(100)]
        public string ThumbImg { get; set; }

        [StringLength(100)]
        public string BannerImg { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string Description { get; set; }

        [StringLength(100)]
        public string HomeUrl { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string Param { get; set; }
    }
}
