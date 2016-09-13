namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("user_favorite")]
    public partial class UserFavorite
    {
        public int Id { get; set; }

        public int? UserId { get; set; }

        public bool? Type { get; set; }

        [StringLength(200)]
        public string Name { get; set; }

        [StringLength(100)]
        public string ThumbImg { get; set; }

        [StringLength(2000)]
        public string Description { get; set; }

        [StringLength(100)]
        public string Url { get; set; }
    }
}
