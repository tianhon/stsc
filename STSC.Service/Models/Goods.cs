namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("goods")]
    public partial class Goods
    {
        public int Id { get; set; }

        public int StoreId { get; set; }

        [Required]
        [StringLength(200)]
        public string Name { get; set; }

        public int ClassificationId { get; set; }

        public float OriginalPrice { get; set; }

        public float RetailPrice { get; set; }

        [Required]
        [StringLength(100)]
        public string ThumbImg { get; set; }

        [StringLength(200)]
        public string ShortDescription { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string Description { get; set; }

        public int Quantity { get; set; }

        public int SellQuantity { get; set; }

        public bool Status { get; set; }
    }
}
