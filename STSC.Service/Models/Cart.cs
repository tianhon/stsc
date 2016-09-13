namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("cart")]
    public partial class Cart
    {
        public int Id { get; set; }

        public int StoreId { get; set; }

        public int GoodsId { get; set; }

        [Required]
        [StringLength(200)]
        public string GoodsName { get; set; }

        [StringLength(200)]
        public string GoodsShortDesc { get; set; }

        [StringLength(100)]
        public string ThumbImg { get; set; }

        public float Price { get; set; }

        public int Count { get; set; }
    }
}
