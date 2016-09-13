namespace STSC.Service.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("goods_comment")]
    public partial class GoodsComment
    {
        public int Id { get; set; }

        public int GoodsId { get; set; }

        public DateTime Time { get; set; }

        [Required]
        [StringLength(50)]
        public string Author { get; set; }

        public sbyte? Score { get; set; }

        [StringLength(500)]
        public string Content { get; set; }
    }
}
