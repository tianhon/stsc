namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("recommendation")]
    public partial class Recommendation
    {
        public int Id { get; set; }

        public bool? Type { get; set; }

        [StringLength(100)]
        public string BannerImg { get; set; }

        [StringLength(100)]
        public string ThumbImg { get; set; }

        [StringLength(200)]
        public string Name { get; set; }

        [StringLength(100)]
        public string URL { get; set; }
    }
}
